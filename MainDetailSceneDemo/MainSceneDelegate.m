//
//  MainSceneDelegate.m
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import "MainSceneDelegate.h"

NSString * const kMainSceneName = @"mainScene";

@implementation MainSceneDelegate

+(UISceneConfiguration *)makeSceneConfiguration:(UISceneSession *)session
{
    UISceneConfiguration *config = [[UISceneConfiguration alloc] initWithName:kMainSceneName sessionRole:session.role];
    config.delegateClass = [self class];
    config.storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    return config;
}

-(void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions
{
    NSUserActivity *activity = connectionOptions.userActivities.anyObject;
    if (!activity)
        activity = session.stateRestorationActivity;
    
    NSLog(@"Main scene will connect to session with activity: %@", activity.userInfo);
}

-(NSUserActivity *)stateRestorationActivityForScene:(UIScene *)scene
{
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:kMainSceneName];
    activity.userInfo = @{@"some_main_state": @"some_value"};
    return activity;
}

@end
