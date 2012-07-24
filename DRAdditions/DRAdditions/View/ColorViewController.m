//
//  ColorViewController.m
//  DRAdditions
//
//  Created by Dongri Jin on 12/07/24.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ColorViewController.h"
#import "UIColor+DRAdditions.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 50)];
    label.backgroundColor = [UIColor colorWithRGB:0x00cc33];
    [self.view addSubview:label];
    
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, 300, 50)];
    label.backgroundColor = [UIColor colorWithRGB:0xcc33cc];
    [self.view addSubview:label];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 300, 50)];
    label.backgroundColor = [UIColor colorWithRGB:0xffff00];
    [self.view addSubview:label];
    
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
