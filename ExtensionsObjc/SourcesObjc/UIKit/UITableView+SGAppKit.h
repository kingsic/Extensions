//
//  UITableView+SGAppKit.h
//  Extensions
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (SGAppKit)
/** Nib Cell 注册，cellReuseIdentifier 为 cell 类名 */
- (void)SG_registerNib:(Class)aClass;
/** Nib Cell 注册 */
- (void)SG_registerNib:(Class)aClass reuseIdentifier:(NSString *)identifier;

/** 纯代码 Cell 注册，cellReuseIdentifier 为 cell 类名 */
- (void)SG_registerClass:(Class)aClass;
/** 纯代码 Cell 注册 */
- (void)SG_registerClass:(Class)aClass reuseIdentifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
