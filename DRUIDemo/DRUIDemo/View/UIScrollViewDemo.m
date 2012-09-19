//
//  UIScrollViewDemo.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "UIScrollViewDemo.h"

@interface UIScrollViewDemo ()

@end

@implementation UIScrollViewDemo

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
    
    CGRect bounds = self.view.bounds;
    bounds.size.height = bounds.size.height - 44;
    
    UIImage *image = [UIImage imageNamed:@"boa.png"];
    float height = image.size.height;
    UIView *baseView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, height * 10)];
    scrollView = [[UIScrollView alloc] initWithFrame:bounds];
    scrollView.contentSize = baseView.bounds.size;
    scrollView.delegate = self;
    CGRect rect = CGRectMake(0, 0, image.size.width, height);
    for (int i=0; i!=10; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame =rect;
        [scrollView addSubview:imageView];
        [imageView release];
        rect.origin.y = rect.origin.y + image.size.height;
    }
    [baseView addSubview:scrollView];
    [self.view addSubview:baseView];
    [scrollView release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - UIScrollView Delegate
- (void)scrollViewDidScroll:(UIScrollView *)_scrollView{
    NSLog(@"%f", _scrollView.bounds.origin.y);
}

@end
