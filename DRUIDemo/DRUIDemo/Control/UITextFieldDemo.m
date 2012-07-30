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
    
    UITextField *tf =
    [[[UITextField alloc] initWithFrame:CGRectMake((320-200)/2, 50, 200, 30)] autorelease];
    tf.borderStyle = UITextBorderStyleRoundedRect;
    tf.textColor = [UIColor darkGrayColor];
    tf.placeholder = @"input";
    tf.clearButtonMode = UITextFieldViewModeAlways;
    [tf addTarget:self action:@selector(editingDidEndOnExit:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.view addSubview:tf];
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

-(void)editingDidEndOnExit:(UITextField*)textfield{
    self.title = textfield.text;
}

@end
