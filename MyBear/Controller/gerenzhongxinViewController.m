//
//  gerenzhongxinViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "gerenzhongxinViewController.h"
#import "chekuViewController.h"
@interface gerenzhongxinViewController ()

@end

@implementation gerenzhongxinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cehku:(id)sender {
    chekuViewController *viewController = [[chekuViewController alloc]init];
    [self.navigationController pushViewController:viewController animated:YES];

}
- (IBAction)daifuwu:(id)sender {
}
- (IBAction)yifuwu:(id)sender {
}
- (IBAction)wodedingdana:(id)sender {
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
