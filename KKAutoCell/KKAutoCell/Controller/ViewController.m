//
//  ViewController.m
//  KKAutoLayout
//
//  Created by 宇航 on 16/11/16.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "KKModel.h"
#import "KKCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSMutableArray<KKModel*> *Data;
@end

@implementation ViewController

- (NSMutableArray *)Data{
    if (!_Data) {
        _Data = [NSMutableArray array];
    }
    return _Data;
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.Data = [KKModel mj_objectArrayWithKeyValuesArray:[self json]];
    [self setUpUI];
}


- (void)setUpUI{
    
    UITableView * tableView= [[UITableView alloc]init];
    tableView.frame = [UIScreen mainScreen].bounds;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.Data.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    KKCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
     cell=[[KKCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    KKModel * model = self.Data[indexPath.row];
    cell.kmodel = model;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat cellHeight = [KKCell cellHight];
    if (self.Data[indexPath.row].cellHight) {
        cellHeight = self.Data[indexPath.row].cellHight;
    }
    return cellHeight;
}

- (id)json{
    
    return @[@{
                 @"title":@"那些花儿",
                 @"content":@"那片笑声让我想起我的那些花儿在我生命每个角落静静为我开着我曾以为我会永远守在她身旁今天我们已经离去在人海茫茫"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光千钧一发又怎会晓得执着的人拥有隐千钧一发又怎会晓得执着的人拥有隐"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以"
                 },
             @{
                 @"title":@"最初的梦想",
                 @"content":@"千钧一发又怎会晓得执着的人拥有隐形翅膀把眼泪种在心上会开出勇敢的花可以在疲惫的时光又怎会晓得执着的又怎会晓得执着的又怎会晓得执着的又怎会晓得执着的又怎会晓得执着的又怎会晓得执着的"
                 }
             ];
}


@end
