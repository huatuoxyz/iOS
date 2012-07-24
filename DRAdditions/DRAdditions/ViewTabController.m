//
//  ViewTabController.m
//  DRAdditions
//
//  Created by Dongri Jin on 12/06/14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewTabController.h"

@interface ViewTabController ()

@end

@implementation ViewTabController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"VIEW", @"VIEW");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
	
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
