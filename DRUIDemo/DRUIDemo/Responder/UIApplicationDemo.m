//
//  UIApplicationDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIApplicationDemo.h"

@interface UIApplicationDemo ()

@end

@implementation UIApplicationDemo

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
    
    //self.navigationController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UITabBarSystemItemMore target:self action:@selector(plusBadge:)];

    //self.navigationController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UITabBarSystemItemMore target:self action:@selector(minusBadge:)];
    
    UIButton *plus = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    plus.frame = CGRectMake(50, 50, 150, 50);
    [plus setTitle:@"Badge +1" forState:UIControlStateNormal];
    [plus addTarget:self action:@selector(plusBadge:) forControlEvents:UIControlEventTouchDown];
    
    UIButton *minus = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    minus.frame = CGRectMake(50, 150, 150, 50);
    [minus setTitle:@"Badge -1" forState:UIControlStateNormal];
    [minus addTarget:self action:@selector(minusBadge:) forControlEvents:UIControlEventTouchDown];

    UIButton *start = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    start.frame = CGRectMake(50, 250, 150, 50);
    [start setTitle:@"Start Network" forState:UIControlStateNormal];
    [start addTarget:self action:@selector(startIndicator:) forControlEvents:UIControlEventTouchDown];
    
    UIButton *stop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    stop.frame = CGRectMake(50, 350, 150, 50);
    [stop setTitle:@"Stop Network" forState:UIControlStateNormal];
    [stop addTarget:self action:@selector(stopIndicator:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:plus];
    [self.view addSubview:minus];

    [self.view addSubview:start];
    [self.view addSubview:stop];

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


-(void)plusBadge:(id)sender{
    UIApplication *app = [UIApplication sharedApplication];
    app.applicationIconBadgeNumber += 1;
    self.navigationItem.title = [NSString stringWithFormat:@"Badge (%d)", app.applicationIconBadgeNumber];
}

-(void)minusBadge:(id)sender{
    UIApplication *app = [UIApplication sharedApplication];
    app.applicationIconBadgeNumber -= 1;
    self.navigationItem.title = [NSString stringWithFormat:@"Badge (%d)", app.applicationIconBadgeNumber];
}

-(void)startIndicator:(id)sender{
    UIApplication *app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = YES;
}

-(void)stopIndicator:(id)sender{
    UIApplication *app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = NO;
}





@end
