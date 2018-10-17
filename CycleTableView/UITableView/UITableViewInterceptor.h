//
//  UITableViewInterceptor.h
//  CycleTableView
//
//  Created by 惠上科技 on 2018/10/17.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITableViewInterceptor : NSObject
@property (nonatomic, weak) id receiver;
@property (nonatomic, weak) id middleMan;
@end

