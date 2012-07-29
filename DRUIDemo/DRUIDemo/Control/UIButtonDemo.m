//
//  UIButtonDemo.m
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIButtonDemo.h"

@implementation UIButtonDemo

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setHidesBottomBarWhenPushed:YES];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    float buttonWidth = 150.0f;
    
    touchedButtonlabel = [[UILabel alloc] initWithFrame:CGRectMake((320-buttonWidth)/2, 10, buttonWidth, 50)];
    touchedButtonlabel.textAlignment = UITextAlignmentCenter;
    touchedButtonlabel.backgroundColor = [UIColor clearColor];
    
    deFaultButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    deFaultButton.frame = CGRectMake((320-buttonWidth)/2, 100, buttonWidth, 50);
    [deFaultButton setTitle:@"押せ" forState:UIControlStateNormal];
    [deFaultButton setTitle:@"ぽち" forState:UIControlStateHighlighted];
    [deFaultButton.titleLabel setFont:[UIFont systemFontOfSize:24]];
    [deFaultButton addTarget:self action:@selector(defaultTouchDown:) forControlEvents:UIControlEventTouchDown];
    [deFaultButton addTarget:self action:@selector(defaultTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:touchedButtonlabel];
    [self.view addSubview:deFaultButton];
    
}


-(void)defaultTouchDown:(id)sender
{
    touchedButtonlabel.text = @"down!!!";
}

-(void)defaultTouchUpInside:(id)sender
{
    touchedButtonlabel.text = @"up!!!";
}

@end
