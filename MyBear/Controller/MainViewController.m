//
//  MainViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/28.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "MainViewController.h"
#import "MainTableViewCell.h"
#import "QiangGouViewController.h"
#import "TiJiaoFuWuViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden=YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden=NO;
}
- (IBAction)xunwen:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"是否询问师傅？" delegate:self cancelButtonTitle:@"否" otherButtonTitles:@"是", nil];
    [alert show];

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _dabaoyang.backgroundColor=[UIColor lightGrayColor];
    _xiaobaoyang.backgroundColor=[UIColor lightGrayColor];
    _jiyougenghuan.backgroundColor=[UIColor lightGrayColor];
    _lvxinqingxi.backgroundColor=[UIColor lightGrayColor];
    _kongtiaoqingxi.backgroundColor=[UIColor lightGrayColor];
    _genhuandianchi.backgroundColor=[UIColor lightGrayColor];
    _yuguaqi.backgroundColor=[UIColor lightGrayColor];
    _neishi.backgroundColor=[UIColor lightGrayColor];
    
    
    [_weizhang setBorderColor:[UIColor lightGrayColor] width:1];
    [_charen setBorderColor:[UIColor lightGrayColor] width:1];
    [_qianggou setBorderColor:[UIColor lightGrayColor] width:1];
    [_jiayouka setBorderColor:[UIColor lightGrayColor] width:1];
    
    
    _myTableView.backgroundColor=[UIColor clearColor];
    [_myTableView registerNib:[UINib nibWithNibName:@"MainTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
}

#pragma mark ========================================
#pragma mark ==UITableView
#pragma mark ========================================
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier01=@"cell";
    MainTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier01];
    if (!cell) {
        cell=[[MainTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier01];
    }
    cell.backgroundColor=[UIColor clearColor];
    cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
    cell.selectedBackgroundView.backgroundColor = myBackgroundColor;
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

//- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return YES;
//}
//
//- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return UITableViewCellEditingStyleDelete;
//}
//
//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//
//    }
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)weizhan:(id)sender {
    WebViewController *viewController = [[WebViewController alloc]init];
    viewController.url=@"http://m.weizhangwang.com/";
    viewController.title=@"违章查询";
    [self.navigationController pushViewController:viewController animated:YES];

}
- (IBAction)chafen:(id)sender {
    WebViewController *viewController = [[WebViewController alloc]init];
    viewController.url=@"http://m.weizhangwang.com/jiashizheng/";
    viewController.title=@"驾照查分";
    [self.navigationController pushViewController:viewController animated:YES];
    

}
- (IBAction)qiangou:(id)sender {
    QiangGouViewController *viewController = [[QiangGouViewController alloc]init];
    [self.navigationController pushViewController:viewController animated:YES];

}
- (IBAction)chognzhi:(id)sender {
    WebViewController *viewController = [[WebViewController alloc]init];
    viewController.url=@"http://m.sinopecsales.com/webmobile/html/webhome.jsp";
    viewController.title=@"加油卡充值";
    [self.navigationController pushViewController:viewController animated:YES];
    

}

- (IBAction)fuwu:(id)sender {
    UIButton *btn=sender;
    TiJiaoFuWuViewController *viewController = [[TiJiaoFuWuViewController alloc]init];
    viewController.nowIndex=btn.tag-100;
    [self.navigationController pushViewController:viewController animated:YES];

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
