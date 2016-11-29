//
//  MainViewController.h
//  MyBear
//
//  Created by 紫平方 on 16/11/28.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "BaseViewController.h"

@interface MainViewController : BaseViewController<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *soufuwu;
@property (weak, nonatomic) IBOutlet UIButton *ditu;
@property (weak, nonatomic) IBOutlet UISearchBar *tf;

@property (weak, nonatomic) IBOutlet UIButton *dianhua;
@property (weak, nonatomic) IBOutlet UIButton *dabaoyang;
@property (weak, nonatomic) IBOutlet UIButton *xiaobaoyang;
@property (weak, nonatomic) IBOutlet UIButton *jiyougenghuan;
@property (weak, nonatomic) IBOutlet UIButton *lvxinqingxi;
@property (weak, nonatomic) IBOutlet UIButton *kongtiaoqingxi;
@property (weak, nonatomic) IBOutlet UIButton *genhuandianchi;
@property (weak, nonatomic) IBOutlet UIButton *yuguaqi;
@property (weak, nonatomic) IBOutlet UIButton *neishi;
@property (weak, nonatomic) IBOutlet UIButton *weizhang;
@property (weak, nonatomic) IBOutlet UIButton *charen;
@property (weak, nonatomic) IBOutlet UIButton *qianggou;
@property (weak, nonatomic) IBOutlet UIButton *jiayouka;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@end
