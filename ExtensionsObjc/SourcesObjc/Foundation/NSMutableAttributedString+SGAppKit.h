//
//  NSMutableAttributedString+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2020/6/23.
//  Copyright © 2020 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (SGAppKit)
/** 类方法创建 NSMutableAttributedString */
+ (NSMutableAttributedString *(^)(NSString *))SG_initWithString;
/** 首行缩进的距离 */
- (NSMutableAttributedString *(^)(CGFloat))SG_firstLineHeadIndent;
/** 设置上下文间距（NSTextAlignmentCenter，NSTextAlignmentRight 时，想要起作用，textAlignment 需设置在 attributedText 之后） */
- (NSMutableAttributedString *(^)(CGFloat))SG_lineSpacing;
/** 设置特定位置文字大小 */
- (NSMutableAttributedString *(^)(NSRange, UIFont *))SG_rangeFont;
/** 设置特定位置文字颜色 */
- (NSMutableAttributedString *(^)(NSRange, UIColor *))SG_rangeColor;
/** 设置特定位置文字颜色及大小 */
- (NSMutableAttributedString *(^)(NSRange, UIColor *, UIFont *))SG_rangeColorFont;

@end

NS_ASSUME_NONNULL_END
