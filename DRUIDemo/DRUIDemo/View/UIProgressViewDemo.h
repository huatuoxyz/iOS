//
//  UIProgressViewDemo.h
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIProgressViewDemo : UIViewController{
    UIProgressView *progressView;
    UIProgressView *barProgressView;
}

@property (nonatomic, retain) UIProgressView *progressView;
@property (nonatomic, retain) UIProgressView *barProgressView;

@end
