//
//  NSMutableAttributedString+SGAppKit.m
//  Extensions
//
//  Created by kingsic on 2020/6/23.
//  Copyright © 2020 kingsic. All rights reserved.
//

#import "NSMutableAttributedString+SGAppKit.h"

@implementation NSMutableAttributedString (SGAppKit)
+ (NSMutableAttributedString *(^)(NSString *))SG_initWithString {
    return ^(NSString *string) {
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
        return attributedString;
    };
}
/** 首行缩进的距离 */
- (NSMutableAttributedString *(^)(CGFloat))SG_firstLineHeadIndent {
    return ^(CGFloat space) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.firstLineHeadIndent = space;
        [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self length])];
        return self;
    };
}
/** 设置上下文间距 */
- (NSMutableAttributedString *(^)(CGFloat))SG_lineSpacing {
    return ^(CGFloat space) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:space];
        [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self length])];
        return self;
    };
}
/** 设置特定位置文字大小 */
- (NSMutableAttributedString *(^)(NSRange, UIFont *))SG_rangeFont {
    return ^(NSRange range, UIFont *font) {
        [self addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}
/** 设置特定位置文字颜色 */
- (NSMutableAttributedString *(^)(NSRange, UIColor *))SG_rangeColor {
    return ^(NSRange range, UIColor *color) {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        return self;
    };
}
/** 设置特定位置文字颜色及大小 */
- (NSMutableAttributedString *(^)(NSRange, UIColor *, UIFont *))SG_rangeColorFont {
    return ^(NSRange range, UIColor *color, UIFont *font) {
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        [self addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}

@end
