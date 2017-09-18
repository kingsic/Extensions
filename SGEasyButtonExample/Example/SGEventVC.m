//
//  SGEventVC.m
//  SGEasyButtonExample
//
//  Created by kingsic on 2017/9/18.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "SGEventVC.h"
#import "SGEasyButton.h"

@interface SGEventVC ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation SGEventVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _btn.SG_timeInterval = 2;
}

- (IBAction)clickEvent:(UIButton *)sender {
    NSLog(@"连续点击我昂");
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
