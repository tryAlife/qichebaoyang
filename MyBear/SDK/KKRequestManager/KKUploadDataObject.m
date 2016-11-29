//
//  KKUploadDataObject.m
//  TEST
//
//  Created by bear on 13-3-28.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

#import "KKUploadDataObject.h"

@implementation KKUploadDataObject

@synthesize type;
@synthesize data;
@synthesize fileName;
@synthesize key;

- (id)init{
    self = [super init];
    if (self) {
        self.fileName = @"upload.jpg";
        self.key = @"file";
    }
    return self;
}

- (void)dealloc{
    [data release];
    [fileName release];
    [key release];
    [super dealloc];
}

@end
