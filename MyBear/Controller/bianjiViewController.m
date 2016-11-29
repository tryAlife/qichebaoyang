//
//  bianjiViewController.m
//  MyBear
//
//  Created by 紫平方 on 16/11/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "bianjiViewController.h"

@interface bianjiViewController ()

@end

@implementation bianjiViewController{
    NSString *tempPath;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setNavRightButtonTitle:@"保存" selector:@selector(NavRightButtonClick)];
}

- (IBAction)img:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:nil
                                  delegate:self
                                  cancelButtonTitle:@"取消"
                                  destructiveButtonTitle:@"拍照"
                                  otherButtonTitles:@"相册",nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    actionSheet.tag=3000;
    [actionSheet showInView:self.view];

}

#pragma mark ==================================================
#pragma mark == KKAlbumPickerControllerDelegate【图片】
#pragma mark ==================================================
- (void)KKAlbumPickerController_DidFinishedPickImage:(NSArray*)aImageArray imageInformation:(NSArray*)aImageInformationAray
{
    if ([aImageArray count]>0) {
        [MBProgressHUD showHUDAddedTo:[[[UIApplication sharedApplication] windows] objectAtIndex:0] animated:YES];
        
        [NSData convertImage:aImageArray toDataSize:200 convertImageOneCompleted:^(NSData *imageData, NSInteger index) {
            
            
            
            NSString *path = [NSString stringWithFormat:@"%@/Documents/PublishFinanceImage_header%@.jpg", NSHomeDirectory(),LString(arc4random())];
            tempPath=path;
            BOOL result = [imageData writeToFile:path atomically:YES];
            if (result) {
                //                [myTableView reloadData];
                
            }
        } KKImageConvertImageAllCompletedBlock:^{
            [MBProgressHUD hideHUDForView:[[[UIApplication sharedApplication] windows] objectAtIndex:0] animated:YES];
            [myTableView reloadData];
        }];
    }
}


#pragma mark ========================================
#pragma mark ==UIImagePickerController
#pragma mark ========================================
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo{
    
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    [picker dismissViewControllerAnimated:YES completion:^{}];
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    NSArray *arr=[NSArray arrayWithObjects:image, nil];
    [NSData convertImage:arr toDataSize:200 convertImageOneCompleted:^(NSData *imageData, NSInteger index) {
        NSString *path = [NSString stringWithFormat:@"%@/Documents/PublishFinanceImage_header%@.jpg", NSHomeDirectory(),LString(arc4random())];
//        tempImgPath=path;
        tempPath=path;
        BOOL result = [imageData writeToFile:path atomically:YES];
        if (result) {
            //            [information setObject:path forKey:touxiang];
            //            [myTableView reloadData];
        }
        
    } KKImageConvertImageAllCompletedBlock:^{
        [MBProgressHUD hideHUDForView:[[[UIApplication sharedApplication] windows] objectAtIndex:0] animated:YES];
        [myTableView reloadData];
    }];
}


- (void)NavRightButtonClick{
    
    NSArray *arr = [LUserDefault objectForKey:@"cheku"];
    NSMutableArray *array1=[[NSMutableArray alloc]init];
    if (arr) {
        [array1 addObjectsFromArray:arr];
    }
    [array1 addObject:@{@"img":tempPath,@"name":_chexitf.text,@"name2":_chexintf.text}];
    [LUserDefault setObject:array1 forKey:@"cheku"];

    
    [self.navigationController popViewControllerAnimated:YES];
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
