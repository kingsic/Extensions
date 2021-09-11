//
//  UIButton+SGAppKit.h
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    /// 图片在左，文字在右
    SGImageLocationStyleLeft,
    /// 图片在右，文字在左
    SGImageLocationStyleRight,
    /// 图片在上，文字在下
    SGImageLocationStyleTop,
    /// 图片在下，文字在上
    SGImageLocationStyleBottom,
} SGImageLocationStyle;

typedef void(^SGCountdownCompletionBlock)(void);

@interface UIButton (SGAppKit)
/**
 *  倒计时
 *
 *  @param second                   倒计时多少秒
 *  @param frontText                倒计时 second 前面的文字内容
 *  @param behindText               倒计时 second 后面的文字内容
 *  @param endTitle                 倒计时结束后 UIButton 上的文字
 */
- (void)SG_countdownWithSecond:(NSInteger)second frontText:(NSString *)frontText behindText:(NSString *)behindText endTitle:(NSString *)endTitle completion:(SGCountdownCompletionBlock)block;

/**
 *  设置图片与文字样式
 *
 *  @param imageLocationStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 */
- (void)SG_imageLocationStyle:(SGImageLocationStyle)imageLocationStyle spacing:(CGFloat)spacing;
/**
 *  设置图片与文字样式（推荐使用）
 *
 *  @param imageLocationStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 *  @param imagePositionBlock     在此 Block 中设置按钮的图片、文字以及 contentHorizontalAlignment 属性
 */
- (void)SG_imageLocationStyle:(SGImageLocationStyle)imageLocationStyle spacing:(CGFloat)spacing imageLocationBlock:(void (^)(UIButton *button))imagePositionBlock;

@end

NS_ASSUME_NONNULL_END
