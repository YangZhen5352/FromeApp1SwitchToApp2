//
//  AppDelegate.m
//  App02
//
//  Created by 杨振 on 2016/11/2.
//  Copyright © 2016年 yangzhen5352. All rights reserved.
//

#import "AppDelegate.h"
#import "LandingVC.h"
#import "LoginVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 *  被别的程序通过URL 打开就会调用此方法
 */
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    
    NSLog(@" ---> %@", url.absoluteString);
    
    // 获取跳转url的请求头
    NSArray *arrUrl = [url.absoluteString componentsSeparatedByString:@":"];
    NSString *urlString = arrUrl.lastObject;
    NSLog(@"urlString --> %@", urlString);
    
    // 获取需要跳转到登陆-注册
    NSString *subString = arrUrl[1];
    subString = [subString componentsSeparatedByString:@"/"].lastObject;

    // 跳转到制定的控制器
    if ([subString isEqual:@"landingFrom"]) {
        UIStoryboard *sb01 = [UIStoryboard storyboardWithName:@"LandingVC" bundle:nil];
        LandingVC *vc = sb01.instantiateInitialViewController;
        vc.scheme = urlString;
        vc.method.titleLabel.text = subString;
        self.window.rootViewController = vc;
    } else {
        UIStoryboard *sb01 = [UIStoryboard storyboardWithName:@"LoginVC" bundle:nil];
        LoginVC *vc = sb01.instantiateInitialViewController;
        vc.scheme = urlString;
        vc.method.titleLabel.text = subString;
        self.window.rootViewController = vc;
    }
    
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
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
