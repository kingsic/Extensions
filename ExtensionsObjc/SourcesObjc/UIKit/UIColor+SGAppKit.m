//
//  UIColor+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UIColor+SGAppKit.h"

@implementation UIColor (SGAppKit)
/// 十六进制颜色
+ (UIColor *)SG_colorWithHexString:(NSString *)string {
    return [self SG_colorWithHexString:string alpha:1.0];
}
+ (UIColor *)SG_colorWithHexString:(NSString *)string alpha:(CGFloat)alpha {
    NSString *cleanString = [string stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF) / 255.0f;
    float green = ((baseValue >> 16) & 0xFF) / 255.0f;
    float blue = ((baseValue >> 8) & 0xFF) / 255.0f;
    
    return [self colorWithRed:red green:green blue:blue alpha:alpha];
}

/// RGB 颜色
+ (UIColor *)SG_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue {
    return [self SG_colorWithRed:red green:green blue:blue alpha:1.0];
}
+ (UIColor *)SG_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
    return [self colorWithRed:(red) / 255.0 green:(green) / 255.0 blue:(blue) / 255.0 alpha:(alpha) / 1.0];
}

/// 单值颜色
+ (UIColor *)SG_colorWithAValue:(CGFloat)aValue {
    return [self SG_colorWithAValue:aValue alpha:1.0];
}
+ (UIColor *)SG_colorWithAValue:(CGFloat)aValue alpha:(CGFloat)alpha {
    return [self SG_colorWithRed:aValue green:aValue blue:aValue alpha:alpha];
}

/// 随机颜色
+ (UIColor *)SG_colorWithRandom {
    return [self SG_colorWithRed:arc4random_uniform(255) green:arc4random_uniform(255) blue:arc4random_uniform(255) alpha:1.0];
}

@end
