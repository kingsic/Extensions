//
//  UIButton+SGCountdown.h
//  SGEasyButtonExample
//
//  Created by kingsic on 2017/9/25.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SGCountdownCompletionBlock)(void);

@interface UIButton (SGCountdown)
/** 倒计时，s倒计 */
- (void)SG_countdownWithSec:(NSInteger)time;
/** 倒计时，秒字倒计 */
- (void)SG_countdownWithSecond:(NSInteger)second;
/** 倒计时，s倒计,带有回调 */
- (void)SG_countdownWithSec:(NSInteger)sec completion:(SGCountdownCompletionBlock)block;
/** 倒计时,秒字倒计，带有回调 */
- (void)SG_countdownWithSecond:(NSInteger)second completion:(SGCountdownCompletionBlock)block;

@end
