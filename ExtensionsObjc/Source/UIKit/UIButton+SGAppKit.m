//
//  UIButton+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UIButton+SGAppKit.h"

@implementation UIButton (SGAppKit)
/** 倒计时 */
- (void)SG_countdownWithSecond:(NSInteger)second frontText:(NSString *)frontText behindText:(NSString *)behindText endTitle:(NSString *)endTitle completion:(SGCountdownCompletionBlock)block {
    __block NSInteger tempSecond = second;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    dispatch_source_set_timer(timer, dispatch_walltime(NULL, 0), 1.0 * NSEC_PER_SEC, 0);
    dispatch_source_set_event_handler(timer, ^{
        if (tempSecond <= 1) {
            dispatch_source_cancel(timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = YES;
                [self setTitle:endTitle forState:UIControlStateNormal];
                block();
            });
        } else {
            tempSecond--;
            dispatch_async(dispatch_get_main_queue(), ^{
                self.enabled = NO;
                [self setTitle:[NSString stringWithFormat:@"%@%ld%@", frontText, (long)tempSecond, behindText] forState:UIControlStateNormal];
            });
        }
    });
    dispatch_resume(timer);
}

/**
 *  设置图片与文字样式
 *
 *  @param imageLocationStyle     图片位置样式
 *  @param spacing           图片与文字之间的间距
 */
- (void)SG_imageLocationStyle:(SGImageLocationStyle)imageLocationStyle spacing:(CGFloat)spacing {
    if (imageLocationStyle == SGImageLocationStyleLeft) {
        if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, 0);
        } else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing);
        } else {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, - 0.5 * spacing, 0, 0.5 * spacing);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, 0.5 * spacing, 0, - 0.5 * spacing);
        }
    } else if (imageLocationStyle == SGImageLocationStyleRight) {
        CGFloat imageW = self.imageView.image.size.width;
        CGFloat titleW = self.titleLabel.frame.size.width;
        if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentLeft) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleW + spacing, 0, 0);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageW, 0, 0);
        } else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentRight) {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, - titleW);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, imageW + spacing);
        } else {
            CGFloat imageOffset = titleW + 0.5 * spacing;
            CGFloat titleOffset = imageW + 0.5 * spacing;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, imageOffset, 0, - imageOffset);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, - titleOffset, 0, titleOffset);
        }
    } else if (imageLocationStyle == SGImageLocationStyleTop) {
        CGFloat imageW = self.imageView.frame.size.width;
        CGFloat imageH = self.imageView.frame.size.height;
        CGFloat titleIntrinsicContentSizeW = self.titleLabel.intrinsicContentSize.width;
        CGFloat titleIntrinsicContentSizeH = self.titleLabel.intrinsicContentSize.height;
        self.imageEdgeInsets = UIEdgeInsetsMake(- titleIntrinsicContentSizeH - spacing, 0, 0, - titleIntrinsicContentSizeW);
        self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageW, - imageH - spacing, 0);
    } else if (imageLocationStyle == SGImageLocationStyleBottom) {
        CGFloat imageW = self.imageView.frame.size.width;
        CGFloat imageH = self.imageView.frame.size.height;
        CGFloat titleIntrinsicContentSizeW = self.titleLabel.intrinsicContentSize.width;
        CGFloat titleIntrinsicContentSizeH = self.titleLabel.intrinsicContentSize.height;
        self.imageEdgeInsets = UIEdgeInsetsMake(titleIntrinsicContentSizeH + spacing, 0, 0, - titleIntrinsicContentSizeW);
        self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageW, imageH + spacing, 0);
    }
}
/**
 *  设置图片与文字样式（推荐使用）
 *
 *  @param imageLocationStyle     图片位置样式
 *  @param spacing                图片与文字之间的间距
 *  @param imageLocationBlock     在此 Block 中设置按钮的图片、文字以及 contentHorizontalAlignment 属性
 */
- (void)SG_imageLocationStyle:(SGImageLocationStyle)imageLocationStyle spacing:(CGFloat)spacing imageLocationBlock:(void (^)(UIButton *button))imageLocationBlock {
    
    imageLocationBlock(self);
    
    [self SG_imageLocationStyle:imageLocationStyle spacing:spacing];
}

@end
