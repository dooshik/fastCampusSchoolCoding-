//
//  AppDelegate.m
//  UIViewTest
//
//  Created by User on 2016. 5. 26..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "SignUpView.h"
#import "MainView.h"

#import "DataCenter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window =[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    UINavigationController * navi;
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    if ([[DataCenter shareIdInstance] autoLogin]) {
        MainView *vc =[storyBoard instantiateViewControllerWithIdentifier:@"MainViewController"];
        navi = [[UINavigationController alloc]initWithRootViewController:vc];}
    else{
        ViewController *vc =[storyBoard instantiateViewControllerWithIdentifier:@"LoginPageViewConltroller"];
        navi =[[UINavigationController alloc]initWithRootViewController:vc];
    }
    self.window.rootViewController= navi;
    [self.window makeKeyAndVisible];
    return YES;
        
    }
//    ViewController *sedVC = [[ ViewController alloc]init];
//    //SecondViewController *sedVC = [[ SecondViewController alloc]initWithNubName:@"SecondViewController.xib"bundle:nil];
//    UINavigationController *naviC =[[UINavigationController alloc]initWithRootViewController:sedVC];
//    self.window .rootViewController =naviC;
//    [self.window makeKeyAndVisible];
//    // 새로 키원도우를 만들고 보여줘라라는 명령어
//    
//    // Override point for customization after application launch.
  



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
