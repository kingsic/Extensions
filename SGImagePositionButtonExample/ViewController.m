//
//  ViewController.m
//  SGImagePositionButtonExample
//
//  Created by kingsic on 2017/9/17.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "ViewController.h"
#import "SGImagePositionButton.h"

@interface ViewController ()
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

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_defaultBtn2 SG_imagePosition:(SGImagePositionDefault) spacing:5];

    // right
    [_rightBtn SG_imagePosition:(SGImagePositionRight) spacing:0];
    [_rightBtn2 SG_imagePosition:(SGImagePositionRight) spacing:10];
    
    // top
    [_topBtn SG_imagePosition:(SGImagePositionTop) spacing:0];
    [_topBtn2 SG_imagePosition:(SGImagePositionTop) spacing:5];

    // bottom
    [_bottomBtn SG_imagePosition:(SGImagePositionBottom) spacing:0];
    [_bottomBtn2 SG_imagePosition:(SGImagePositionBottom) spacing:10];
    // lastBtn
    [_lastBtn SG_imagePosition:(SGImagePositionDefault) spacing:5];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
