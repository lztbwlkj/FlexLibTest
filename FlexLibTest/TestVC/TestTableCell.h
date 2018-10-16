//
//  TestTableCell.h
//  FlexLibTest
//
//  Created by TuBo on 2018/10/16.
//  Copyright © 2018 TuBur. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTableCell : FlexBaseTableCell
-(void)setData:(NSDictionary*)data ForHeight:(BOOL)forHeight;

@end

NS_ASSUME_NONNULL_END
