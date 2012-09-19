//
//  UILabelDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UILabelDemo.h"

@interface UILabelDemo ()

@end

@implementation UILabelDemo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    label1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 30)];
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, 200, 30)];
    label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 200, 30)];
    
    label1.backgroundColor = [UIColor clearColor];
    label1.textColor = [UIColor redColor];
    label1.textAlignment = UITextAlignmentCenter;
    label1.font = [UIFont boldSystemFontOfSize:12];

    label2.shadowColor = [UIColor grayColor];
    label2.shadowOffset = CGSizeMake(3, 3);
    label2.textColor = [UIColor yellowColor];
    label2.textAlignment = UITextAlignmentCenter;

    label3.backgroundColor = [UIColor blueColor];
    label3.textColor = [UIColor cyanColor];
    label3.textAlignment = UITextAlignmentCenter;
    label3.lineBreakMode = UILineBreakModeTailTruncation;

    label1.text = @"Label1 Label1 Label1 Label1";
    label2.text = @"Label2 Label2 Label2 Label2";
    label3.text = @"Label3 Label3 Label3 Label3";
    
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    
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
