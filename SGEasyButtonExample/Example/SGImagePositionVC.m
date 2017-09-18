//
//  SGImagePositionVC.m
//  SGEasyButtonExample
//
//  Created by kingsic on 2017/9/18.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "SGImagePositionVC.h"
#import "SGEasyButton.h"

@interface SGImagePositionVC ()
@property (weak, nonatomic) IBOutlet UIButton *defaultBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (weak, nonatomic) IBOutlet UIButton *defaultBtn2;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn2;
@property (weak, nonatomic) IBOutlet UIButton *topBtn;
@property (weak, nonatomic) IBOutlet UIButton *bottomBtn;
@property (weak, nonatomic) IBOutlet UIButton *topBtn2;
@property (weak, nonatomic) IBOutlet UIButton *bottomBtn2;
@property (weak, nonatomic) IBOutlet UIButton *lastBtn;
@end

@implementation SGImagePositionVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [_defaultBtn2 SG_imagePositionStyle:(SGImagePositionStyleDefault) spacing:5];
    
    // right
    [_rightBtn SG_imagePositionStyle:(SGImagePositionStyleRight) spacing:0];
    [_rightBtn2 SG_imagePositionStyle:(SGImagePositionStyleRight) spacing:10];
    
    // top
    [_topBtn SG_imagePositionStyle:(SGImagePositionStyleTop) spacing:0];
    [_topBtn2 SG_imagePositionStyle:(SGImagePositionStyleTop) spacing:5];
    
    // bottom
    [_bottomBtn SG_imagePositionStyle:(SGImagePositionStyleBottom) spacing:0];
    [_bottomBtn2 SG_imagePositionStyle:(SGImagePositionStyleBottom) spacing:10];
    // lastBtn
    [_lastBtn SG_imagePositionStyle:(SGImagePositionStyleDefault) spacing:5];
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
