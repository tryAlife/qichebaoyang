//
//  bianjiViewController.h
//  MyBear
//
//  Created by 紫平方 on 16/11/29.
//  Copyright © 2016年 bear. All rights reserved.
//

#import "BaseViewController.h"

@interface bianjiViewController : BaseViewController<UIActionSheetDelegate,KKAlbumPickerControllerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *imgbtn;
@property (weak, nonatomic) IBOutlet UITextField *chexintf;
@property (weak, nonatomic) IBOutlet UITextField *chexitf;

@end
