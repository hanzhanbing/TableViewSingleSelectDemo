//
//  ViewController.m
//  TableViewSingleSelectDemo
//
//  Created by scsys on 16/3/31.
//  Copyright © 2016年 北京蓝科新宇教育科技股份有限公司. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "Model.h"

#define kScreenHeight   [UIScreen mainScreen].bounds.size.height
#define kScreenWidth   [UIScreen mainScreen].bounds.size.width

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dataArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TableView单选";
    
    //初始化tableView
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    //初始化model
    _dataArray = [NSMutableArray array];
    for (int i = 0; i<10; i++) {
        Model *model = [[Model alloc] init];
        model.selectStatus = NO; //全部初始为未选中状态
        [_dataArray addObject:model];
    }
}

#pragma mark - UITableViewDelegate、UITableViewDataSource代理
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIndentifier = @"cellInfo";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (!cell) {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    
    Model *model = _dataArray[indexPath.row];
    
    [cell setContentWithModel:model]; //默认不显示控件
    
    cell.selectBtn.tag = 1000+indexPath.row;
    [cell.selectBtn addTarget:self action:@selector(selectAction:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (void)selectAction:(UIButton *)selectBtn {
    NSInteger index = selectBtn.tag-1000;
    NSLog(@"选中第%ld个",(long)index);
    
    //改变数据源
    for (int i = 0; i<_dataArray.count; i++) {
        Model *model = _dataArray[i];
        if (i==index) {
            model.selectStatus = YES;
        } else {
            model.selectStatus = NO;
        }
    }
    
    //刷新tableView
    [_tableView reloadData];
}

//cell选中事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
