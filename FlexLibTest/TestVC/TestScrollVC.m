//
//  TestScrollVC.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/11.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "TestScrollVC.h"

@interface TestScrollVC (){
    UILabel* multilabel;
    UILabel* touchlabel;

}

@end

@implementation TestScrollVC
-(NSString *)getFlexName{
    return NSStringFromClass([self class]);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    multilabel.hidden = YES;
    touchlabel.text = @"哈哈😄我只是看看效果";
}
-(void)tapShow{
    multilabel.hidden=!multilabel.hidden;

//    [multilabel.rootView layoutAnimation:0.3];
}

-(BOOL)shouldAutorotate{
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscapeRight;
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
