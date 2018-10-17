//
//  UITableViewInterceptor.m
//  CycleTableView
//
//  Created by 惠上科技 on 2018/10/17.
//  Copyright © 2018年 惠上科技. All rights reserved.
//

#import "UITableViewInterceptor.h"

@implementation UITableViewInterceptor

#pragma mark ---forward & response override
-(id)forwardingTargetForSelector:(SEL)aSelector{
    if ([self.middleMan respondsToSelector:aSelector]) return self.middleMan;
    if ([self.receiver respondsToSelector:aSelector]) return self.receiver;
    return [super forwardingTargetForSelector:aSelector];
}

-(BOOL)respondsToSelector:(SEL)aSelector{
    if ([self.middleMan respondsToSelector:aSelector]) return YES;
    if ([self.receiver respondsToSelector:aSelector]) return YES;
    return [super respondsToSelector:aSelector];
}
@end
