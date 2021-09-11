//
//  UITableView+SGAppKit.m
//  SGAppKitExample
//
//  Created by kingsic on 2017/8/7.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "UITableView+SGAppKit.h"

@implementation UITableView (SGAppKit)
// Nib Cell 注册
- (void)SG_registerNib:(Class)aClass {
    NSString *className = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:className bundle:nil] forCellReuseIdentifier:className];
}
// Nib Cell 注册
- (void)SG_registerNib:(Class)aClass reuseIdentifier:(NSString *)identifier {
    NSString *className = NSStringFromClass(aClass);
    [self registerNib:[UINib nibWithNibName:className bundle:nil] forCellReuseIdentifier:identifier];
}


// 纯代码 Cell 注册
- (void)SG_registerClass:(Class)aClass {
    NSString *className = NSStringFromClass(aClass);
    [self registerClass:aClass forCellReuseIdentifier:className];
}
// 纯代码 Cell 注册
- (void)SG_registerClass:(Class)aClass reuseIdentifier:(NSString *)identifier {
    [self registerClass:aClass forCellReuseIdentifier:identifier];
}

@end
