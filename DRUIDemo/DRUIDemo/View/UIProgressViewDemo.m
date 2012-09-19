//
//  UIProgressViewDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIProgressViewDemo.h"

@interface UIProgressViewDemo ()

@end

@implementation UIProgressViewDemo

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

    progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    barProgressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
    
    progressView.frame = CGRectMake(50, 50, 200, 10);
    barProgressView.frame = CGRectMake(50, 100, 200, 10);
    
    [self.view addSubview:progressView];
    [self.view addSubview:barProgressView];
    [progressView release];
    [barProgressView release];
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

- (void) viewDidAppear:(BOOL)animated {
	[self startProgress];
}

- (void)startProgress {
	//label.backgroundColor = nil;
	progressView.progress = 0.0f;
	barProgressView.progress = 0.0f;
	
	for (unsigned int i=0; i<301; i++){
		[self performSelectorInBackground:@selector(progressProcessing) withObject:nil];
		[NSThread sleepForTimeInterval:0.01f];
	}
}

- (void)progressProcessing {
	float amountDone = 1.0f / 300.0f;
	progressView.progress += amountDone;
	barProgressView.progress += amountDone;
}

@end



