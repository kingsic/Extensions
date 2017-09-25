//
//  SGCountdownVC.m
//  SGEasyButtonExample
//
//  Created by kingsic on 2017/9/25.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "SGCountdownVC.h"
#import "SGEasyButton.h"

@interface SGCountdownVC ()

@end

@implementation SGCountdownVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)countdownBtn_action:(UIButton *)sender {
    [sender SG_countdownWithSec:30];
}

- (IBAction)countdownBtn2_action:(UIButton *)sender {
    [sender SG_countdownWithSecond:31];
}

- (IBAction)countdownBtnWithCompletion:(UIButton *)sender {
    [sender SG_countdownWithSecond:30 completion:^{
        [sender setTitle:@"重新获取" forState:(UIControlStateNormal)];
    }];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
