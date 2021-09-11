//
//  NSString+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "NSString+SGAppKit.h"

@implementation NSString (SGAppKit)
/** 判断字符串是否为空 */
- (BOOL)SG_isEmpty {
    return (([self isKindOfClass:[NSNull class]]) || [self isEqual:[NSNull null]] || (self.length == 0) || (self == nil) || ([self isEqualToString:@"(null)"]) || ([self isEqualToString:@"<null>"]));
}

/** 判断是否是手机号码 */
- (BOOL)SG_isPhoneNumber {
    NSString *tempStr = [self stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (tempStr.length != 11) {
        return NO;
    } else {
        NSString *mobileRegex = @"[1][34578][0-9]{9}";
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegex];
        BOOL isMatch = [predicate evaluateWithObject:tempStr];
        
        if (isMatch) {
            return YES;
        } else {
            return NO;
        }
    }
}

/**
 *  根据字号大小计算出字符串的宽
 *
 *  @param font      文字字号
 */
- (CGFloat)SG_calculateStringWidthWithFont:(UIFont *)font {
    NSDictionary *dict = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:CGSizeMake(0, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
}
/**
 *  根据字号大小及宽度计算出字符串的高
 *
 *  @param font         文字字号
 *  @param width        限制的宽度
 */
- (CGFloat)SG_calculateStringHeightWithFont:(UIFont *)font width:(CGFloat)width {
    NSDictionary *dict = @{NSFontAttributeName : font};
    return [self boundingRectWithSize:CGSizeMake(width, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.height;
}
/**
 *  根据字号大小、宽度及上下行间距计算出字符串的高
 *
 *  @param font         文字字号
 *  @param width        限制的宽度
 *  @param spacing      字符串上下间的间距
 */
- (CGFloat)SG_calculateStringHeightWithFont:(UIFont *)font width:(CGFloat)width spacing:(CGFloat)spacing {
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = spacing;
    NSDictionary *dict = @{
        NSFontAttributeName: font,
        NSParagraphStyleAttributeName: paragraphStyle
    };
    return [self boundingRectWithSize:CGSizeMake(width, 0) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.height;
}


@end
