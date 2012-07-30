//
//  UISwitchDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/30.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UISwitchDemo.h"

@interface UISwitchDemo ()

@end

@implementation UISwitchDemo

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
    
    UISwitch *sw = [[[UISwitch alloc] init] autorelease];
    sw.center = CGPointMake(160, 100);
    sw.on = YES;
    [sw addTarget:self action:@selector(changedValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sw];
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

-(void)changedValue:(UISwitch*)_switch{
    self.title = [NSString stringWithFormat:@"%d", [_switch isOn]];
}

@end
