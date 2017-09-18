//
//  ViewController.m
//  SGEasyButtonExample
//
//  Created by kingsic on 2017/9/18.
//  Copyright © 2017年 kingsic. All rights reserved.
//

#import "ViewController.h"
#import "SGEventVC.h"
#import "SGImagePositionVC.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *dataList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataList = @[@"UIButton+SGEvent", @"UIButton+SGImagePosition"];
    
    [self foundTableView];
}

- (void)foundTableView {
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.dataList[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        SGEventVC *EVC = [[SGEventVC alloc] init];
        [self.navigationController pushViewController:EVC animated:YES];
    } else if (indexPath.row == 1) {
        SGImagePositionVC *IPVC = [[SGImagePositionVC alloc] init];
        [self.navigationController pushViewController:IPVC animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
