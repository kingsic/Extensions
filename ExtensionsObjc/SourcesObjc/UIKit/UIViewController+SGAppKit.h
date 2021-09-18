//
//  UIViewController+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (SGAppKit)
/** 设置导航栏标题颜色及大小 */
- (void)SG_setNavBarTitleColor:(UIColor *)color font:(UIFont *)font;

/** 返回到指定控制器 */
- (void)SG_popToViewController:(Class)aClass;
/** 返回到指定控制器 */
- (void)SG_popToViewController:(Class)aClass animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
