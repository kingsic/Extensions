//
//  如遇到问题或有更好方案，请通过以下方式进行联系
//      QQ：1357127436
//      Email：kingsic@126.com
//      GitHub：https://github.com/kingsic/SGEasyButton.git
//
//  UIButton+SGEvent.m
//  UIButton+SGEvent
//
//  Created by kingsic on 16/10/9.
//  Copyright © 2016年 kingsic. All rights reserved.
//

#import "UIButton+SGEvent.h"
#import <objc/runtime.h>

@interface UIButton ()
@property (nonatomic, assign) NSTimeInterval temp_timeInterval;
@end

@implementation UIButton (SGHelper)

+ (void)load {
    Method systemMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    SEL sysSEL = @selector(sendAction:to:forEvent:);
    
    Method SGMethod = class_getInstanceMethod(self, @selector(SG_sendAction:to:forEvent:));
    SEL SGSEL = @selector(SG_sendAction:to:forEvent:);
    
    BOOL addMethod = class_addMethod(self, SGSEL, method_getImplementation(SGMethod), method_getTypeEncoding(SGMethod));
    if (addMethod) {
        class_replaceMethod(self, sysSEL, method_getImplementation(systemMethod), method_getTypeEncoding(systemMethod));
    } else {
        method_exchangeImplementations(systemMethod, SGMethod);
    }
}

- (void)SG_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    BOOL needSendAction = (NSDate.date.timeIntervalSince1970 - self.temp_timeInterval >= self.SG_timeInterval);

    if (self.SG_timeInterval > 0) {
        self.temp_timeInterval = NSDate.date.timeIntervalSince1970;
    }
    
    if (needSendAction) {
        [self SG_sendAction:action to:target forEvent:event];
    }
}

#pragma mark - - - set、get
- (void)setSG_timeInterval:(NSTimeInterval)SG_timeInterval {
    objc_setAssociatedObject(self, "UIButton_SG_timeInterval", @(SG_timeInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSTimeInterval)SG_timeInterval {
    return [objc_getAssociatedObject(self, "UIButton_SG_timeInterval") doubleValue];
}

- (void)setTemp_timeInterval:(NSTimeInterval)temp_timeInterval {
    objc_setAssociatedObject(self, "UIButton_temp_timeInterval", @(temp_timeInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSTimeInterval)temp_timeInterval {
    return [objc_getAssociatedObject(self, "UIButton_temp_timeInterval") doubleValue];
}


@end

