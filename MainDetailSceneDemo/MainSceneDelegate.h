//
//  MainSceneDelegate.h
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainSceneDelegate : NSObject <UIWindowSceneDelegate>

+(UISceneConfiguration *)makeSceneConfiguration:(UISceneSession *)session;

@property (nonatomic, retain) UIWindow *window;

@end
