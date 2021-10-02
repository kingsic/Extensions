//
//  UIView+SGAppKit.m
//  Extensions
//
//  Created by kingsic on 2019/7/13.
//  Copyright © 2019年 kingsic. All rights reserved.
//

#import "UIControl+SGAppKit.h"
#import <objc/runtime.h>
 
static char kSG_timeIntervalKey;
static char kIsEventInvalidKey;

@interface UIControl ()
@property(nonatomic, assign) BOOL isEventInvalid;
@end
 
@implementation UIControl (SGAppKit)

+ (void)load {
    Method systemMethod = class_getInstanceMethod(self, @selector(sendAction:to:forEvent:));
    Method exchangeMethod = class_getInstanceMethod(self, @selector(SG_sendAction:to:forEvent:));
    method_exchangeImplementations(systemMethod, exchangeMethod);
}
 
- (void)SG_sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    if (!self.isEventInvalid) {
        self.isEventInvalid = YES;
        [self SG_sendAction:action to:target forEvent:event];
        [self performSelector:@selector(setIsEventInvalid:) withObject:@(NO) afterDelay:self.SG_timeInterval];
    }
}

- (NSTimeInterval)SG_timeInterval {
    return [objc_getAssociatedObject(self, &kSG_timeIntervalKey) doubleValue];
}
- (void)setSG_timeInterval:(NSTimeInterval)SG_timeInterval {
    objc_setAssociatedObject(self, &kSG_timeIntervalKey, @(SG_timeInterval), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (BOOL)isEventInvalid {
    return [objc_getAssociatedObject(self, &kIsEventInvalidKey) boolValue];
}
-(void)setIsEventInvalid:(BOOL)isEventInvalid {
    objc_setAssociatedObject(self, &kIsEventInvalidKey, @(isEventInvalid), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
