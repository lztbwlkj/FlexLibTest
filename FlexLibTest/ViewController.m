//
//  ViewController.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/9.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(NSString *)getFlexName{
    return @"TestLayout";
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBar.translucent = NO;

    
    [FlexSetPreviewVC presentInVC:self];
}

-(UIEdgeInsets)getSafeArea:(BOOL)portrait{
    return UIEdgeInsetsMake(0,0,0,0);
}

@end
