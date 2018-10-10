//
//  ViewController.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/9.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
//    UIView* add;
//    UIView* batch;
//    UILabel* testLabel;
//    UIView *redView;
}
@end

@implementation ViewController
-(NSString *)getFlexName{
    return @"TestLayout";
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.avoidiPhoneXBottom = NO;
    self.navigationController.navigationBar.translucent = NO;

}

-(UIEdgeInsets)getSafeArea:(BOOL)portrait{
    return UIEdgeInsetsMake(0,0,0,0);
}

@end
