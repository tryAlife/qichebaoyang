
//
//  QiangGouViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "QiangGouViewController.h"

@interface QiangGouViewController ()

@end

@implementation QiangGouViewController{
    NSInteger nowIndex;
}
- (IBAction)btn1:(id)sender {
    nowIndex=1;
    [self exitBtnClick];
}
- (IBAction)btn2:(id)sender {
    nowIndex=2;
    [self exitBtnClick];

}

- (void)exitBtnClick{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"是否购买？" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
    [alert show];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex==1) {
        
        
        if (nowIndex==1) {
            
            NSArray *arr = [LUserDefault objectForKey:wodedingdan];
            NSMutableArray *array1=[[NSMutableArray alloc]init];
            if (arr) {
                [array1 addObjectsFromArray:arr];
            }
            [array1 addObject:@[@"699/3块漆",@"国产品牌漆",@"质保一年"]];
            [LUserDefault setObject:array1 forKey:wodedingdan];

            
        }else{
            NSArray *arr = [LUserDefault objectForKey:wodedingdan];
            NSMutableArray *array1=[[NSMutableArray alloc]init];
            if (arr) {
                [array1 addObjectsFromArray:arr];
            }
            [array1 addObject:@[@"999/3块漆",@"原装进口漆",@"质保三年"]];
            [LUserDefault setObject:array1 forKey:wodedingdan];


        }
        KKShowNoticeMessage(@"已购买");
        [self.navigationController popViewControllerAnimated:YES];
        
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
