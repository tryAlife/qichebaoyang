//
//  TiJiaoFuWuViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "TiJiaoFuWuViewController.h"

@interface TiJiaoFuWuViewController ()

@end

@implementation TiJiaoFuWuViewController{
    NSArray *array;
}
@synthesize nowIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
   array = @[@{@"img":@"bg0",@"title":@"大保养",
        @"lab":@"这是服务的介绍1",},
      @{@"img":@"bg1",@"title":@"小保养",
        @"lab":@"这是服务的介绍2",},
      @{@"img":@"bg2",@"title":@"机油更换",
        @"lab":@"这是服务的介绍3",},
      @{@"img":@"bg3",@"title":@"滤芯清洗",
        @"lab":@"这是服务的介绍4",},
      @{@"img":@"bg4",@"title":@"空调清洗",
        @"lab":@"这是服务的介绍5",},
      @{@"img":@"bg5",@"title":@"更换清洗",
        @"lab":@"这是服务的介绍6",},
      @{@"img":@"bg6",@"title":@"更换蓄电池",
        @"lab":@"这是服务的介绍7",},
      @{@"img":@"bg7",@"title":@"雨刮器",
        @"lab":@"这是服务的介绍8",}];
    NSDictionary *dic=[array objectAtIndex:nowIndex];
    _img.image=Limage(dic[@"img"]);
    _lab.text=dic[@"lab"];
    self.title=dic[@"title"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tijiaoFUwu:(id)sender {
   NSArray *arr = [LUserDefault objectForKey:@"wodeweifuwu"];
    NSMutableArray *array1=[[NSMutableArray alloc]init];
    if (arr) {
        [array1 addObjectsFromArray:arr];
    }
    [array1 addObject:[array objectAtIndex:nowIndex]];
    [LUserDefault setObject:array1 forKey:@"wodeweifuwu"];
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
