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
//    FlexScrollView *scrollView;
    UILabel* _label;
    FlexScrollView* _scroll;
}
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
    self.hbd_barStyle = UIBarStyleBlack;
    self.hbd_barAlpha = 0.0;
}

//-(UIEdgeInsets)getSafeArea:(BOOL)portrait{
//    return UIEdgeInsetsMake(0, 0, 0, 0);
//}

-(void)onTest:(UIButton *)sender{
    TestVC *vc = [[TestVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestTable:(id)sender {
    TestTableVC *vc=[[TestTableVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestScrollView:(id)sender {
    TestScrollVC* vc=[[TestScrollVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestModalView:(id)sender {
    TestModalVC* vc=[[TestModalVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTestLoginView:(id)sender {
    TestLoginVC* vc=[[TestLoginVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onjustifyContent:(id)sender {
    DemoFlexVC* vc=[[DemoFlexVC alloc]initWithFlexName:@"justifyContent"];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onTextView:(id)sender {
    TextViewVC* vc=[[TextViewVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)onViewLayouts:(id)sender {
    [FlexLayoutViewerVC presentInVC:self];
}

@end
