//
//  TableViewCell.m
//  TableViewSingleSelectDemo
//
//  Created by scsys on 16/3/31.
//  Copyright © 2016年 北京蓝科新宇教育科技股份有限公司. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _selectBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 12, 20, 20)];
        [_selectBtn setBackgroundImage:[UIImage imageNamed:@"勾选-未选中"] forState:UIControlStateNormal];
        [_selectBtn setBackgroundImage:[UIImage imageNamed:@"勾选-选中"] forState:UIControlStateSelected];
        [self addSubview:_selectBtn];
        
    }
    return self;
}

- (void)setContentWithModel:(Model *)model {
    BOOL selectStatus = model.selectStatus;
    if (selectStatus == YES) {
        _selectBtn.selected = YES;
    } else {
        _selectBtn.selected = NO;
    }
}

@end
