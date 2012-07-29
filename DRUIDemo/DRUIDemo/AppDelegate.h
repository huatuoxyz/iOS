//
//  AppDelegate.h
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ControlController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) UINavigationController *viewNavController;
@property (strong, nonatomic) UINavigationController *controlNavController;
@property (strong, nonatomic) ViewController *viewMainViewController;
@property (strong, nonatomic) ControlController *controlMainViewController;

@end

/*
 @property は規則付きの getter, setter を生成するための定義
 ただし getter, setter だけではなく、メンバ変数ごと定義することもできる (最新のランタイムの場合)
 @property には属性を設定することが可能で、それにより振る舞いが変わる
 @property は実装側で @synthesize しなければいけない
 (いけないということはないけど、最初はそう思っていてもよい)
 
 *-----------------------------------------------------------------
 | 指定できる属性(ARC無効時):
 | retain                  assign                   copy
 | (参照カウントを操作する) or (参照カウントを操作しない) or (複製が保持される)
 
 *-----------------------------------------------------------------
 | 指定できる属性(ARC有効時):
 | strong            weak             copy
 | (強い参照を持つ) or (弱い参照を持つ) or (複製が保持される)
 | (ARC無効時のプロパティも使用可能)
 
 *-----------------------------------------------------------------
 | 指定できる属性(共通):
 | atomic                 nonatomic
 | (スレッドセーフである) or (スレッドセーフでない)
 |
 | readonly              readwrite
 | (getterのみ作られる) or (getter, setterが作られる)
 
 デフォルトは atomic, assign(weak), readwrite
 
*/
