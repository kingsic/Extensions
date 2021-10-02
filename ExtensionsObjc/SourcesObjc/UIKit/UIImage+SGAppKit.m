//
//  UIView+SGAppKit.m
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UIImage+SGAppKit.h"

@implementation UIImage (SGAppKit)
/** 返回一张处理过的圆角图片 */
- (instancetype)SG_circleImage {
    UIGraphicsBeginImageContext(self.size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    // 添加一个圆
    CGContextAddEllipseInRect(ctx, rect);
    // 裁剪(裁剪成刚才添加的图形形状)
    CGContextClip(ctx);
    // 往圆上面画一张图片
    [self drawInRect:rect];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}
/** 返回一张处理过的圆角图片 */
+ (instancetype)SG_circleImageNamed:(NSString *)name {
    return [[self imageNamed:name] SG_circleImage];
}

@end
