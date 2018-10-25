//
//  TestModalVC.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/11.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "TestModalVC.h"

@interface TestModalVC (){
    FlexModalView *modelView;
    
}

@end

@implementation TestModalVC
-(NSString *)getFlexName{
    return NSStringFromClass([self class]);
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

-(void)tapModalBottom{
    [modelView setViewAttr:@"position" Value:@"bottom"];
    [modelView showModalInView:self.view Anim:YES];
}

-(void)tapModalCenter{
    [modelView setViewAttr:@"position" Value:@"center"];
    [modelView showModalInView:self.view Anim:YES];
}

-(void)tapModalTop{
    [modelView setViewAttr:@"position" Value:@"top"];
    [modelView showModalInView:self.view Anim:YES];
}

-(void)closeModal{
    [modelView hideModal:YES];
}

@end
