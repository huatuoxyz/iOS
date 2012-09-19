//
//  UIWebViewDemo.h
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kLeftMargin				20.0
#define kTopMargin				20.0
#define kRightMargin			20.0
#define kTweenMargin			10.0

#define kTextFieldHeight		30.0

@interface UIWebViewDemo : UIViewController<UITextFieldDelegate, UIWebViewDelegate> {
	UIWebView	*webView;
}

@property(nonatomic, retain) UIWebView *webView;
@end
