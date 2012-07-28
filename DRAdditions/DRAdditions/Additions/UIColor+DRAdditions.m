//
//  UIColor+DRAdditions.m
//  DRAdditions
//
//  Created by Dongri Jin on 12/06/15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIColor+DRAdditions.h"

@implementation UIColor (NPAdditions)

+ (UIColor *)colorWithRGB:(int)aRGB {
    int sRed   = (aRGB >> 16) & 0xff;
    int sGreen = (aRGB >>  8) & 0xff;
    int sBlue  = (aRGB      ) & 0xff;
    
    return [UIColor colorWithRed:((CGFloat)sRed / 0xff) green:((CGFloat)sGreen / 0xff) blue:((CGFloat)sBlue / 0xff) alpha:1.0];
}

+ (UIColor *)defaultTintColor {
    return [UIColor colorWithRGB:0x28a7b9];
}

+ (UIColor *)defaultBackgroundColor {
    return [UIColor colorWithRGB:0xF3F4F6];
}

@end
