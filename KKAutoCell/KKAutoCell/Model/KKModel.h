//
//  KKModel.h
//  KKAutoLayout
//
//  Created by 宇航 on 16/11/16.
//  Copyright © 2016年 KH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KKModel : NSObject
@property(nonatomic,copy)NSString * title;
@property(nonatomic,copy)NSString * content;

@property (nonatomic ,assign)CGSize contentSize;

@property (nonatomic ,assign)CGFloat cellHight;
@end
