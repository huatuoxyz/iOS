//
//  UIButton+DRAdditions.m
//  DRAdditions
//
//  Created by Dongri Jin on 12/07/27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIButton+DRAdditions.h"

#import <QuartzCore/QuartzCore.h>

#import "UIColor+DRAdditions.h"

@implementation UIButton (DRAdditions)

- (void)setBackgroundColor:(UIColor *)color redius:(float)redius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor forState:(UIControlState)state {
    CGRect buttonSize = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    UIView *bgView = [[[UIView alloc] initWithFrame:buttonSize] autorelease];
    bgView.layer.cornerRadius = redius;
    bgView.layer.borderWidth = borderWidth;
    bgView.layer.borderColor = [borderColor CGColor];
    bgView.clipsToBounds = true;
    bgView.backgroundColor = color;
    UIGraphicsBeginImageContext(self.frame.size);
    [bgView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *screenImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setBackgroundImage:screenImage forState:state];
    
}

- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    [self setBackgroundColor:color redius:5.0f borderWidth:1.0f borderColor:[UIColor grayColor] forState:state];
}

- (void)setBackgroundColorInt:(int)colorInt forState:(UIControlState)state {
    UIColor *color = [UIColor colorWithRGB:colorInt];
    [self setBackgroundColor:color forState:state];
}

@end
