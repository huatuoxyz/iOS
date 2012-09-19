//
//  UITextViewDemo.h
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextViewDemo : UIViewController  <UITextViewDelegate> {
	UITextView	*textView;
	UITextView	*editTextView;
    
}

@property (nonatomic, retain) UITextView *textView;
@property (nonatomic, retain) UITextView *editTextView;

@end

