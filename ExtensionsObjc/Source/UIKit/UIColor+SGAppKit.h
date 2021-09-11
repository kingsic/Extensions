//
//  UIColor+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SGAppKit)
/** 十六进制颜色(alpha 为 1.0) */
+ (UIColor *)SG_colorWithHexString:(NSString *)string;
/** 十六进制颜色(alpha 自定义) */
+ (UIColor *)SG_colorWithHexString:(NSString *)string alpha:(CGFloat)alpha;

/** RGB 颜色(alpha 为 1.0) */
+ (UIColor *)SG_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue;
/** RGB 颜色(alpha 自定义) */
+ (UIColor *)SG_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;

/** 单值颜色(alpha 为 1.0) */
+ (UIColor *)SG_colorWithAValue:(CGFloat)aValue;
/** 单值颜色(alpha 自定义) */
+ (UIColor *)SG_colorWithAValue:(CGFloat)aValue alpha:(CGFloat)alpha;

/** 随机颜色 */
+ (UIColor *)SG_colorWithRandom;

@end

NS_ASSUME_NONNULL_END
