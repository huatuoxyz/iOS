//
//  LeftMenuViewController.h
//  DRSlideMenu
//
//  Created by Dongri Jin on 2012/07/28.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftMenuViewController : UITableViewController{
    UIViewController *_previousViewController;
}

@property (nonatomic, retain) UIButton *previousButton;


+ (id)sharedInstance;
-(void)presentViewController:(UIViewController *) viewControllerToPresent animated:(BOOL)flag;

@end
