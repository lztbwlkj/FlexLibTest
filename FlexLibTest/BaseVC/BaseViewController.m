//
//  BaseViewController.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/10.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()

@end

@implementation BaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
}


-(UIEdgeInsets)getSafeArea:(BOOL)portrait{
    if (portrait) {
        return UIEdgeInsetsMake(64, 0, 0, 0);
    }
    return UIEdgeInsetsMake(32, 0, 0, 0);
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
