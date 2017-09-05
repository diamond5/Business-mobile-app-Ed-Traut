//
//  AppDelegate.h
//  Ed Traut
//
//  Created by eden on 3/4/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>


#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 100000
#import <UserNotifications/UserNotifications.h>
#endif

@interface AppDelegate : UIResponder <UIApplicationDelegate, UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) NSInteger msgCount;

//@property (nonatomic) bool alertTapped;

@end

