//
//  MainViewController.m
//  DRSlideMenu
//
//  Created by Dongri Jin on 2012/07/28.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "MainViewController.h"
#import "LeftMenuViewController.h"
#import "RightMenuViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Slide Menu";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *leftBotton = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                           style:UIBarButtonItemStylePlain
                                                           target:self
                                                           action:@selector(leftSlideMenu)];
    self.navigationItem.leftBarButtonItem = leftBotton;

    UIBarButtonItem *rightBotton = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                            style:UIBarButtonItemStylePlain
                                                            target:self
                                                            action:@selector(rightSlideMenu)];
    self.navigationItem.rightBarButtonItem = rightBotton;
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 100)];
    label.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label];
    [label release];

	
    UILabel *labelL = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 120, 100)];
    labelL.textAlignment = UITextAlignmentCenter;
    labelL.text = @"→";
    labelL.font = [UIFont systemFontOfSize:50.0f];
    [self.view addSubview:labelL];
    [labelL release];

    
    UILabel *labelR = [[UILabel alloc] initWithFrame:CGRectMake(210, 20, 120, 100)];
    labelR.textAlignment = UITextAlignmentCenter;
    labelR.text = @"←";
    labelR.font = [UIFont systemFontOfSize:50.0f];
    [self.view addSubview:labelR];
    [labelR release];

    
    
    
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    // Do any additional setup after loading the view.
    
    // Swipe Event
    UISwipeGestureRecognizer* swipeRightGestureL = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSlideMenu)];
    swipeRightGestureL.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRightGestureL];


    UISwipeGestureRecognizer* swipeRightGestureR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSlideMenu)];
    swipeRightGestureR.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeRightGestureR];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -

-(void) leftSlideMenu
{
    [[LeftMenuViewController sharedInstance] presentViewController:self animated: YES];
}

-(void) rightSlideMenu
{
    [[RightMenuViewController sharedInstance] presentViewController:self animated: YES];
}

-(void) selectedMenu:(int) selectedIndex{
    NSLog(@"%d", selectedIndex);
    label.text = [NSString stringWithFormat:@"Menu %d", selectedIndex];
}

@end
