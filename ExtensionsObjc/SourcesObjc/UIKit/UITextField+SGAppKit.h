//
//  UITextField+SGAppKit.h
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (SGAppKit)
/** 占位文字颜色 */
- (void)SG_setPlaceholderColor:(UIColor *)color;
/** 占位文字颜色和字体大小 */
- (void)SG_setPlaceholderColor:(UIColor *)color font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
