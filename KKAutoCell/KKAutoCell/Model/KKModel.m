//
//  KKModel.m
//  KKAutoLayout
//
//  Created by 宇航 on 16/11/16.
//  Copyright © 2016年 KH. All rights reserved.
//

#import "KKModel.h"
#import "UIViewExt.h"

@implementation KKModel

- (void)setContent:(NSString *)content{
    
    _content = content;
    CGFloat contentWidth = KScreenWidth -20 -20;
    CGSize contentFsize = [content boundingRectWithSize:CGSizeMake(contentWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
    contentFsize.height += 30;
    
    _contentSize = contentFsize;
    
    _cellHight = contentFsize.height + 40;
}
@end
