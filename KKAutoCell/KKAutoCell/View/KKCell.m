//
//  KKCell.m
//  KKAutoLayout
//
//  Created by 宇航 on 16/11/16.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "KKCell.h"
#import "UIViewExt.h"

@interface KKCell ()
@property(nonatomic,weak)UILabel * titleLabel;
@property(nonatomic,weak)UILabel * contentLabel;
@end

@implementation KKCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self loadUI];
    }
    return self;
}

- (void)loadUI
{
    UILabel * title = [UILabel new];
    _titleLabel = title;
    title.frame  = CGRectMake(10, 10, 100, 20);
    [self.contentView addSubview:title];
   
    
    UILabel * contentLabel = [UILabel new];
    _contentLabel = contentLabel;
    contentLabel.numberOfLines = 0;
    contentLabel.frame  = CGRectZero;
    [self.contentView addSubview:contentLabel];
    
}

- (void)setKmodel:(KKModel *)kmodel{
    _kmodel = kmodel;
    CGFloat contentWidth = KScreenWidth -20 -20;
    self.contentLabel.frame = CGRectMake(10, self.titleLabel.bottom + 6, contentWidth, kmodel.contentSize.height);
    
    self.titleLabel.text = kmodel.title;
    self.contentLabel.text=kmodel.content;
}

+ (CGFloat)cellHight
{
    return 100;
}

@end
