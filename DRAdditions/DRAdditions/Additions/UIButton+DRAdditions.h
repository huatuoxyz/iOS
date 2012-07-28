//
//  UIButton+DRAdditions.h
//  DRAdditions
//
//  Created by Dongri Jin on 12/07/27.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIButton (DRAdditions)

- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state;
- (void)setBackgroundColorInt:(int)colorInt forState:(UIControlState)state;
- (void)setBackgroundColor:(UIColor *)color redius:(float)redius borderWidth:(float)borderWidth borderColor:(UIColor *)borderColor forState:(UIControlState)state;
@end
