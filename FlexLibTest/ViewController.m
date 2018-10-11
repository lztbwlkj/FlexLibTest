//
//  ViewController.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/9.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "ViewController.h"
#import "TestVC.h"
#import "TestTableVC.h"
#import "TestScrollVC.h"
#import "TestModalVC.h"
#import "TestLoginVC.h"
#import "DemoFlexVC.h"
#import "TextViewVC.h"


@interface ViewController (){
    FlexScrollView *scrollView;
    UILabel* _label;
}
//@property (nonatomic, strong) FlexScrollView *scrollView;
@end

@implementation ViewController
- (instancetype)init{
    self = [super init];
    if (self) {
        self.navigationItem.title = @"FlexLib Demo";
    }
    return self;
}

-(NSString *)getFlexName{
    return NSStringFromClass([self class]);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}




@end
