//
//  UISegmentedControlDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/30.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UISegmentedControlDemo.h"

@interface UISegmentedControlDemo ()

@end

@implementation UISegmentedControlDemo

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
    int selectedIndex = 2;
    items = [[NSArray arrayWithObjects:@"iPod", @"iPhone", @"iPad", @"iMac", nil] retain];
    UISegmentedControl *seg = [[[UISegmentedControl alloc] initWithItems:items] autorelease];
    seg.frame = CGRectMake((320-250)/2, 50, 250, 30);
    seg.segmentedControlStyle = UISegmentedControlStyleBar;
    seg.selectedSegmentIndex = selectedIndex;
    [seg addTarget:self action:@selector(selectedSegment:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:seg];
    self.title = [items objectAtIndex:selectedIndex];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)selectedSegment:(UISegmentedControl*)seg{
    self.title = [NSString stringWithFormat:@"%@", [items objectAtIndex:[seg selectedSegmentIndex]]];
}


@end
