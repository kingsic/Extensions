//
//  UIBarButtonItem+SGAppKit.h
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIBarButtonItem (SGAppKit)
/**
 *  返回带图片的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param image        图片
 *  @param highImage    高亮的图片
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)SG_itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;

/**
 *  返回纯字体的 UIBarButtonItem
 *
 *  @param target       点击 item 后调用哪个对象的方法
 *  @param action       点击 item 后调用 target 的哪个方法
 *  @param title        标题
 *  @param titleColor   标题颜色
 *  @param titleFont    标题字号
 *
 *  @return 创建完的 item
 */
+ (UIBarButtonItem *)SG_itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont;

@end

NS_ASSUME_NONNULL_END
