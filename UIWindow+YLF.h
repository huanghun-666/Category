//
//  UIWindow+YLF.h
//  Player
//
//  Created by YLF on 2017/9/7.
//  Copyright © 2017年 YLF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (YLF)

/*!
 @method currentViewController
 
 @return Returns the topViewController in stack of topMostController.
 */
+ (UIViewController *)currentViewController;

@end
