//
//  DetailSceneDelegate.h
//  MainDetailSceneDemo
//
//  Created by Tom Hamming on 3/10/22.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString * const kDetailSceneName;

@interface DetailSceneDelegate : NSObject <UIWindowSceneDelegate>

+(UISceneConfiguration *)makeSceneConfiguration:(UISceneSession *)session;

@property (nonatomic, retain) UIWindow *window;

@end

NS_ASSUME_NONNULL_END
