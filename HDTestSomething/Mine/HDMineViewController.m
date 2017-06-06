//
//  HDMineViewController.m
//  HDTestSomething
//
//  Created by yscompany on 2017/5/22.
//  Copyright © 2017年 yscompany. All rights reserved.
//

#import "HDMineViewController.h"
#import "HDTestmarqueeViewController.h"

@interface HDMineViewController ()
@end

@implementation HDMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"跑马灯" style:UIBarButtonItemStylePlain target:self action:@selector(enterMarqueeVc)];

        // Do any additional setup after loading the view.
}
#pragma mark - action method
- (void)enterMarqueeVc {
    HDTestmarqueeViewController *vc = [HDTestmarqueeViewController new];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
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
