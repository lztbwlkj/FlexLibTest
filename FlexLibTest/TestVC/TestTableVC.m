//
//  TestTableVC.m
//  FlexLibTest
//
//  Created by TuBo on 2018/10/11.
//  Copyright © 2018年 TuBur. All rights reserved.
//

#import "TestTableVC.h"
#import "TestTableCell.h"
@interface TestTableVC ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *_table;
    NSMutableArray* _datas;
    
    UILabel* content;   //header中的content

}

@end

@implementation TestTableVC
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.navigationItem.title = @"Table Demo";
    }
    return self;
}

//-(NSString *)getFlexName{
//    return NSStringFromClass([self class]);
//}

//-(void)tableHeaderFrameChange{
//    [_table beginUpdates];
//    [_table setTableHeaderView:_table.tableHeaderView];
//    [_table endUpdates];
//}

-(UIView *)createView:(Class)cls Name:(NSString *)name{
    
    if([NSStringFromClass([self class]) isEqualToString:@"TestTableVC"])
        return [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    return nil;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];

    self.avoidiPhoneXBottom = NO;
    
    _table.delegate = self;
    _table.dataSource = self;

    NSArray* datas =
    @[
      @{
          @"name": @"研发",
          @"type": @"一般周报",
          @"date": @"2013-5-20",
          @"title": @"测试费时代峰峻啥地方",
          @"content": @"我是东方啥地方世纪东方手机里",
          },
      @{
          @"name": @"名字",
          @"type": @"一般类型",
          @"date": @"2011-5-11 14:20",
          @"title": @"我是标题",
          @"content": @"登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"时代峰峻历史课带附件莱克斯顿解放路我是东方啥地方世纪东方手机里的放假了时代峰峻历史记录东方闪电交流方式快受打击了开放时间类库地方就是留点饭捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"this is test content, haha I need more text, can you input it ? more, more, more ………………",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"this is test content, haha I need more text, can you input it ? more, more, more ………………this is test content, haha I need more text, can you input it ? more, more, more ………………this is test content, haha I need more text, can you input it ? more, more, more ………………",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"我是东方啥地this is test content, haha I need more text, can you input it ? more, more, more ………………方世纪东方手机里的放假了时代峰峻历史记录东方闪电交流方式快捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      @{
          @"name": @"Amanda",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"This is no good if you want a maximum of three lines, like the question implied. Guess I need to calculate the height of three lines and pass it in to the sizeWithFont function then.",
          },
      @{
          @"name": @"Karry",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"great answer. I found this the most useful for multiline labels",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"I found Ian L's answer best using -sizeWithFont:constrainedToSize:lineBreakMode:",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"方式快捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"int lineCount = myLabel.numberOfLines;ount;",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @" Beware that for my situation, width of my label is fixed and I only need sizeToFit for adjusting height",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"中华人民共和国北京市海淀区中关村768产业园，回龙观，你的地址？？？？",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"我是东方啥地方世纪东方手机里的放假了时代峰峻历史记录东方闪电交流方式快捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"我是东方啥地方世纪东方手机里的放假了时代峰峻历史记录东方闪电交流方式快捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      @{
          @"name": @"测试",
          @"type": @"一般类型",
          @"date": @"2011-5-11",
          @"title": @"我是标题",
          @"content": @"我是东方啥地方世纪东方手机里的放假了时代峰峻历史记录东方闪电交流方式快捷登录放暑假了多分数据代理费私搭乱建快放暑假了坑多分数据留点饭",
          },
      ];
    _datas = [datas mutableCopy];
    [_table reloadData];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _datas.count;
}

static NSString *identifier = @"TestTableCellIdentifier";
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[TestTableCell alloc] initWithFlex:nil reuseIdentifier:identifier];
    }
    [cell setData:_datas[indexPath.row] ForHeight:NO indexPath:indexPath];
    if (indexPath.row == 3) {
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if(cell==nil){
        cell = [[TestTableCell alloc] initWithFlex:nil reuseIdentifier:nil];
    }
    [cell setData:_datas[indexPath.row] ForHeight:YES indexPath:indexPath];
    CGFloat h = [cell heightForWidth:tableView.frame.size.width];
    if (indexPath.row == 3) {
        NSLog(@"h = %.2f",h);
    }
    return h;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section==1) {
        return 15;
    }
    return 0.00001;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.00001;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}


@end
