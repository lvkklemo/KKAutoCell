//
//  KKCell.h
//  KKAutoLayout
//
//  Created by 宇航 on 16/11/16.
//  Copyright © 2016年 KH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KKModel.h"
@interface KKCell : UITableViewCell
@property(nonatomic,strong)KKModel * kmodel;
+ (CGFloat)cellHight;
@end
