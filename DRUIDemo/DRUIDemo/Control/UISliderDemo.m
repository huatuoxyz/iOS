//
//  UISliderDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/30.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UISliderDemo.h"

@interface UISliderDemo ()

@end

@implementation UISliderDemo

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
    
    UISlider *sl = [[[UISlider alloc] initWithFrame:CGRectMake((320-200)/2, 50, 200, 10)] autorelease];
    sl.minimumValue = 0.0;
    sl.maximumValue = 500.0;
    sl.value = 250.0;
    [sl addTarget:self action:@selector(changedValue:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sl];
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

-(void)changedValue:(UISlider*)slider
{
    self.title = [NSString stringWithFormat:@"%f", [slider value]];
}

@end
