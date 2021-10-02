//
//  UITextView+SGAppKit.h
//  Extensions
//
//  Created by kingsic on 2020/6/23.
//  Copyright © 2020 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (SGAppKit)
/// 加载带有标签的字符串
- (void)SG_loadHTMLString:(NSString *)string;
/// 加载带有标签的字符串，并设置上下行间距（spacing）
- (void)SG_loadHTMLString:(NSString *)string spacing:(CGFloat)spacing;

@end

NS_ASSUME_NONNULL_END
