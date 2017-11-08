//
//  AppDelegate.m
//  分栏控制器基础
//
//  Created by zh dk on 2017/8/25.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "AppDelegate.h"
#import "VCRoot.h"
#import "VCSecond.h"
#import "VCThrid.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    VCRoot *vcRoot = [[VCRoot alloc] init];
   
    
    VCSecond *vcSecond = [[VCSecond alloc] init];
   
    
    VCThrid *vcThrid = [[VCThrid alloc] init];
    
    
    vcRoot.title = @"视图1";
    vcSecond.title = @"视图2";
    vcThrid.title = @"视图3";
    
     vcRoot.view.backgroundColor = [UIColor blueColor];
     vcSecond.view.backgroundColor = [UIColor yellowColor];
     vcThrid.view.backgroundColor = [UIColor orangeColor];
    
    //创建分栏控制器对象
    UITabBarController *tabController = [[UITabBarController alloc]init];
    //将分栏控制器管理数组赋值
    NSArray *arrayVC= [NSArray arrayWithObjects:vcRoot,vcSecond,vcThrid ,nil];
    tabController.viewControllers = arrayVC;
    //将分栏控制器作为跟视图控制器
    self.window.rootViewController = tabController;
    //设置选中的视图控制器的索引
    tabController.selectedIndex = 1;
    //当前选中控制器对象
    if (tabController.selectedViewController == vcThrid) {
        NSLog(@"当前显示的控制器三");
    }
    tabController.tabBar.translucent = NO;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
