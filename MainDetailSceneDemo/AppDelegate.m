//
//  AppDelegate.m
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import "AppDelegate.h"
#import "MainSceneDelegate.h"
#import "DetailSceneDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    NSUserActivity *activity = options.userActivities.anyObject;
    if (!activity)
        activity = connectingSceneSession.stateRestorationActivity;
    
    NSString *activityType = activity.activityType;
    
    NSLog(@"Asked for scene config for activity type: %@", activityType);
    
    if ([activityType isEqualToString:kDetailSceneName])
        return [DetailSceneDelegate makeSceneConfiguration:connectingSceneSession];
    
    return [MainSceneDelegate makeSceneConfiguration:connectingSceneSession];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    NSLog(@"Did discard scene sessions: %@", sceneSessions);
}


@end
