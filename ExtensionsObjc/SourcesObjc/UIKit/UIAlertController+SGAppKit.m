//
//  UIAlertController+SGAppKit.m
//  Extensions
//
//  Created by kingsic on 2021/4/1.
//  Copyright © 2021年 kingsic. All rights reserved.
//

#import "UIAlertController+SGAppKit.h"

typedef enum : NSUInteger {
    UIAlertActionTypeSingle,
    UIAlertActionTypeDouble,
} UIAlertActionType;

@implementation UIAlertController (SGAppKit)
+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message actionTitle:(NSString *)actionTitle  handler:(UIAlertActionBlock)handler {
    UIAlertController *alertController = [UIAlertController _alertControllerWithTitle:title message:message alertActionType:(UIAlertActionTypeSingle) leftActionTitle:actionTitle style:(UIAlertActionStyleDefault) handler:handler rightActionTitle:nil style:(0) handler:nil];
    return alertController;
}

+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftActionTitle:(NSString *)leftActionTitle  handler:(UIAlertActionBlock)leftActionHandler rightActionTitle:(NSString *)rightActionTitle  handler:(UIAlertActionBlock)rightActionHandler {
    UIAlertController *alertController = [UIAlertController _alertControllerWithTitle:title message:message alertActionType:(UIAlertActionTypeDouble) leftActionTitle:leftActionTitle style:(UIAlertActionStyleDefault) handler:leftActionHandler rightActionTitle:rightActionTitle style:(UIAlertActionStyleDefault) handler:rightActionHandler];
    return alertController;
}

+ (UIAlertController *)SG_alertControllerWithTitle:(NSString *)title message:(NSString *)message leftActionTitle:(NSString *)leftActionTitle style:(UIAlertActionStyle)leftAlertActionStyle handler:(UIAlertActionBlock)leftActionHandler rightActionTitle:(NSString *)rightActionTitle style:(UIAlertActionStyle)rightAlertActionStyle handler:(UIAlertActionBlock)rightActionHandler {
    UIAlertController *alertController = [UIAlertController _alertControllerWithTitle:title message:message alertActionType:(UIAlertActionTypeDouble) leftActionTitle:leftActionTitle style:leftAlertActionStyle handler:leftActionHandler rightActionTitle:rightActionTitle style:rightAlertActionStyle handler:rightActionHandler];
    return alertController;
}


+ (UIAlertController *)_alertControllerWithTitle:(NSString *)title message:(NSString *)message alertActionType:(UIAlertActionType)alertActionType leftActionTitle:(NSString *)leftActionTitle style:(UIAlertActionStyle)leftAlertActionStyle handler:(UIAlertActionBlock)leftActionHandler rightActionTitle:(NSString *)rightActionTitle style:(UIAlertActionStyle)rightAlertActionStyle handler:(UIAlertActionBlock)rightActionHandler {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *leftAction = [UIAlertAction actionWithTitle:leftActionTitle style:leftAlertActionStyle handler:leftActionHandler];
    [alertController addAction:leftAction];
    if (alertActionType == UIAlertActionTypeDouble) {
        UIAlertAction *rightAction = [UIAlertAction actionWithTitle:rightActionTitle style:rightAlertActionStyle handler:rightActionHandler];
        [alertController addAction:rightAction];
    }
    return alertController;
}


@end
