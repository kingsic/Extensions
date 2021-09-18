//
//  UIAlertController+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2021/4/1.
//  Copyright © 2021年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UIAlertActionBlock)(UIAlertAction * _Nonnull action);

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (SGAppKit)
/**
 *  快速创建 UIAlertController
 *
 *  @param title            title
 *  @param message          message
 *  @param actionTitle      actionTitle
 *  @param handler          actionHandler
 *
 *  @return 返回一个 UIAlertAction 样式的 UIAlertController
 */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle handler:(UIAlertActionBlock)handler;
/**
 *  快速创建 UIAlertController
 *
 *  @param title                    title
 *  @param message                  message
 *  @param leftActionTitle          leftActionTitle
 *  @param leftActionHandler        leftActionHandler
 *  @param rightActionTitle         rightActionTitle
 *  @param rightActionHandler       rightActionHandler
 *
 *  @return 返回两个 UIAlertAction 样式的 UIAlertController
 */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftActionTitle:(NSString *)leftActionTitle  handler:(UIAlertActionBlock)leftActionHandler rightActionTitle:(NSString *)rightActionTitle  handler:(UIAlertActionBlock)rightActionHandler;
/**
 *  快速创建 UIAlertController
 *
 *  @param title                        title
 *  @param message                      message
 *  @param leftActionTitle              leftActionTitle
 *  @param leftAlertActionStyle         leftAlertActionStyle
 *  @param leftActionHandler            leftActionHandler
 *  @param rightActionTitle             rightActionTitle
 *  @param rightAlertActionStyle        rightAlertActionStyle
 *  @param rightActionHandler           rightActionHandler
 *
 *  @return 返回两个 UIAlertAction 样式的 UIAlertController
 */
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftActionTitle:(NSString *)leftActionTitle style:(UIAlertActionStyle)leftAlertActionStyle handler:(UIAlertActionBlock)leftActionHandler rightActionTitle:(NSString *)rightActionTitle style:(UIAlertActionStyle)rightAlertActionStyle handler:(UIAlertActionBlock)rightActionHandler;

@end

NS_ASSUME_NONNULL_END
