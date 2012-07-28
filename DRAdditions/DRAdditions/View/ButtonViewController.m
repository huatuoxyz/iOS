//
//  ButtonViewController.m
//  DRAdditions
//
//  Created by Dongri Jin on 12/07/27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ButtonViewController.h"

#import "UIButton+DRAdditions.h"

@interface ButtonViewController ()

@end

@implementation ButtonViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton *roundedrect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    roundedrect.frame = CGRectMake(10, 10, 300, 50);
    [roundedrect setTitle:@"RoundedRect" forState:UIControlStateNormal];
    [self.view addSubview:roundedrect];
    
    UIButton *roundedrect_bg = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    roundedrect_bg.frame = CGRectMake(10, 70, 300, 50);
    [roundedrect_bg setBackgroundColor:[UIColor grayColor]];
    [roundedrect_bg setTintColor:[UIColor grayColor]];
    [roundedrect_bg setTitle:@"RoundedRect + Background" forState:UIControlStateNormal];
    [self.view addSubview:roundedrect_bg];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 130, 300, 50)];
    [btn setBackgroundColorInt:0x00cc33 forState:UIControlStateNormal];
    [btn setTitle:@"Hello Button!" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn release];
    
    btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 190, 300, 50)];
    [btn setBackgroundColor:[UIColor purpleColor] redius:20.0f borderWidth:3.0f borderColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn setTitle:@"Hello Button!" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn release];
    
    
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

@end
