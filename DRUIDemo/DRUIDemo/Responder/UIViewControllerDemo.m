//
//  UIViewControllerDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIViewControllerDemo.h"

@interface UIViewControllerDemo ()

@end

@implementation UIViewControllerDemo

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

-(IBAction)presentmodalViewAction:(id)sender{
    modalViewController = [[UIViewController alloc] init];
    modalViewController.view.frame = self.view.bounds;
    modalViewController.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [closeButton setTitle:@"Close" forState:UIControlStateNormal];
    closeButton.frame = CGRectMake(50, 50, 200, 50);
    
    [closeButton addTarget:self action:@selector(closeModalView:) forControlEvents:UIControlEventTouchDown];
    [modalViewController.view addSubview:closeButton];
    
    [self presentModalViewController:modalViewController animated:YES];
    [modalViewController release];
}


-(void)closeModalView:(id)sender{
    [modalViewController dismissModalViewControllerAnimated:YES];
}

-(IBAction)pushViewAction:(id)sender{
    pushViewController = [[UIViewController alloc] init];
    pushViewController.view.frame = self.view.bounds;
    pushViewController.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [backButton setTitle:@"Back" forState:UIControlStateNormal];
    backButton.frame = CGRectMake(50, 50, 200, 50);
    
    [backButton addTarget:self action:@selector(backNaviView:) forControlEvents:UIControlEventTouchDown];
    [pushViewController.view addSubview:backButton];
    
    [self.navigationController pushViewController:pushViewController animated:YES];
    [pushViewController release];
}


-(void)backNaviView:(id)sender{
    [pushViewController.navigationController popViewControllerAnimated:YES];
}












@end
