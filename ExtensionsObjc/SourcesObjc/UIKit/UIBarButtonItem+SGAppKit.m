//
//  UIBarButtonItem+SGAppKit.m
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UIBarButtonItem+SGAppKit.h"

@implementation UIBarButtonItem (SGAppKit)
//／ 返回带图片的 UIBarButtonItem
+ (UIBarButtonItem *)SG_itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage {
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    // 设置图片
    [button setBackgroundImage:[UIImage imageNamed:image] forState:(UIControlStateNormal)];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:(UIControlStateHighlighted)];
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    button.frame = CGRectMake(0, 0, button.currentBackgroundImage.size.width, button.currentBackgroundImage.size.height);
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

//／ 返回纯字体的 UIBarButtonItem
+ (UIBarButtonItem *)SG_itemWithTarget:(id)target action:(SEL)action title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)titleFont {
    UIButton *button = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [button setTitle:title forState:(UIControlStateNormal)];
    [button setTitleColor:titleColor forState:(UIControlStateNormal)];
    button.titleLabel.font = titleFont;
    // Button 点击事件
    [button addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    // 设置尺寸
    [button sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
