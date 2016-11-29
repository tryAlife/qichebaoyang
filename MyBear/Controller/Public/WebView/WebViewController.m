//
//  WebViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/22.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize  url;
@synthesize title;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=title;
    UIWebView *webView=[[UIWebView alloc]init];
    webView.frame=CGRectMake(0, 0, ApplicationWidth, ApplicationHeight+20);
    [self.view addSubview:webView];

    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    

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
