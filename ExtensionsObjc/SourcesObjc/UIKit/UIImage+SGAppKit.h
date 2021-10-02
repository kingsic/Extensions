//
//  UIView+SGAppKit.h
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SGAppKit)
/** 返回一张处理过的圆角图片 */
- (instancetype)SG_circleImage;
/** 返回一张处理过的圆角图片 */
+ (instancetype)SG_circleImageNamed:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
