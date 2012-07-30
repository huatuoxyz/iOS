//
//  UITextFieldDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/30.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UITextFieldDemo.h"

@interface UITextFieldDemo ()

@end

@implementation UITextFieldDemo

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

@end
