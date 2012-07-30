//
//  UIPageControlDemo.h
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface UIPageControlDemo : UIViewController<UIScrollViewDelegate> {

    UIScrollView *pagingScrollView;
	UIPageControl *pageControl;
    
}

@property (nonatomic, retain) UIScrollView *pagingScrollView;
@property (nonatomic, retain) UIPageControl *pageControl;

@end
