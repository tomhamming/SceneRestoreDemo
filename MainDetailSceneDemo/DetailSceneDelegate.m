//
//  DetailSceneDelegate.m
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import "DetailSceneDelegate.h"

NSString * const kDetailSceneName = @"detail_type";

@implementation DetailSceneDelegate

+(UISceneConfiguration *)makeSceneConfiguration:(UISceneSession *)session
{
    UISceneConfiguration *config =  [[UISceneConfiguration alloc] initWithName:kDetailSceneName sessionRole:session.role];
    config.delegateClass = [self class];
    config.storyboard = [UIStoryboard storyboardWithName:@"DetailStoryboard" bundle:nil];
    return config;
}

-(void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions
{
    NSUserActivity *activity = connectionOptions.userActivities.anyObject;
    if (!activity)
        activity = session.stateRestorationActivity;
    
    scene.activationConditions.canActivateForTargetContentIdentifierPredicate = [NSPredicate predicateWithValue:NO];
    
    NSLog(@"Detail scene will connect to session with activity: %@", activity.userInfo);
}

-(NSUserActivity *)stateRestorationActivityForScene:(UIScene *)scene
{
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:kDetailSceneName];
    activity.userInfo = @{@"some_detail_state": @"some_info"};
    return activity;
}

@end
