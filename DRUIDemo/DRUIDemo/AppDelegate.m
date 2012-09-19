//
//  AppDelegate.m
//  DRUIDemo
//
//  Created by Dongri Jin on 2012/07/29.
//  Copyright (c) 2012年 Dongri Jin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize tabBarController = _tabBarController;

@synthesize viewNavController = _viewNavController;
@synthesize controlNavController = _controlNavController;
@synthesize viewMainViewController = _viewMainViewController;
@synthesize controlMainViewController = _controlMainViewController;
@synthesize responderController = _responderController;

- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch
	NSMutableArray* controllers = [[NSMutableArray alloc]init];
	
	_viewMainViewController = [[ViewController alloc]init];
	_viewNavController = [[UINavigationController alloc]initWithRootViewController:_viewMainViewController];
	UITabBarItem *viewItem = [[UITabBarItem alloc]initWithTitle:@"View" image:nil tag:0];
	[_viewNavController setTabBarItem:viewItem];
	[viewItem release];
	[controllers addObject:_viewNavController];
	
    _controlMainViewController = [[ControlController alloc]init];
    _controlNavController = [[UINavigationController alloc]initWithRootViewController:_controlMainViewController];
	UITabBarItem *controlItem = [[UITabBarItem alloc]initWithTitle:@"Control" image:nil tag:0];
	[_controlNavController setTabBarItem:controlItem];
	[controlItem release];
	[controllers addObject:_controlNavController];
	
    _responderController = [[ResponderController alloc]init];
    _responderNavController = [[UINavigationController alloc]initWithRootViewController:_responderController];
	UITabBarItem *responderItem = [[UITabBarItem alloc]initWithTitle:@"Responder" image:nil tag:0];
	[_responderNavController setTabBarItem:responderItem];
	[responderItem release];
	[controllers addObject:_responderNavController];
	
    _tabBarController = [[UITabBarController alloc]init];
	_tabBarController.viewControllers = controllers;
	[_tabBarController isViewLoaded];
	
	[controllers release];
	
	[_window addSubview:_tabBarController.view];
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
