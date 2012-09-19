//
//  UIViewControllerDemo.h
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/31.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewControllerDemo : UIViewController{
    IBOutlet UIButton *presentmodalView;
    UIViewController *modalViewController;
    UIViewController *pushViewController;
}

-(IBAction)presentmodalViewAction:(id)sender;
-(IBAction)pushViewAction:(id)sender;

@end
