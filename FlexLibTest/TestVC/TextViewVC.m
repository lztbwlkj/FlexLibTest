//
//  TextViewVC.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/11.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "TextViewVC.h"

@interface TextViewVC (){
    FlexScrollView* scroll;
    
    UIView* _imgParent;
    
}

@end

@implementation TextViewVC

- (void)viewDidLoad {
    [super viewDidLoad];



}

-(void)removeCell:(UITapGestureRecognizer *)tap{
    UIView* cell = tap.view;
    [cell removeFromSuperview];
    
    [_imgParent markDirty];
}

-(void)onAddImage{
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(removeCell:)];
    UIView* cell = [[UIView alloc]init];
    [cell addGestureRecognizer:tap];
    
    [cell enableFlexLayout:YES];

    [cell setLayoutAttrStrings:@[
                                 @"width",@"20%",
                                 @"aspectRatio",@"1",
                                 @"margin",@"2%",
                                 @"alignItems",@"center",
                                 @"justifyContent",@"center"
                                 ]];
    
    [cell setViewAttr:@"bgColor" Value:@"#e5e5e5"];
    [cell setViewAttr:@"borderRadius" Value:@"10"];
    [_imgParent insertSubview:cell atIndex:0];
    
    UILabel* label=[UILabel new];
    [label enableFlexLayout:YES];
    [label setViewAttrStrings:@[
                                @"fontSize",@"16",
                                @"color",@"red",
                                @"text",@"删除",
                                ]];
    [cell addSubview:label];
    
    [_imgParent markDirty];
}

@end
