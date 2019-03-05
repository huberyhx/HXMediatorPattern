//
//  HXAbstractMediator.m
//  HXMediatorPattern
//
//  Created by haoxu.wang on 2019/3/5.
//  Copyright © 2019年 haoxu.wang. All rights reserved.
//

#import "HXAbstractMediator.h"


@implementation HXAbstractMediator

/** 添加客户资料 */
- (void)addClintProfile:(HXAbstractClient *)client {
    [self.clients addObject:client];
}

/** 我要买房 */
- (NSArray<HXAbstractClient *> *)screenHouseForBuyer:(HXAbstractClient *)buyer {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    // 查找客户能买的房子
    for (HXAbstractClient *ckick in self.clients) {
        if (buyer.money > ckick.price) {
            [array addObject:ckick];
        }
    }
    // 返回客户能买的所有房子
    return [array copy];
}

#pragma mark - Lazy
- (NSMutableArray<HXAbstractClient *> *)clients {
    if (!_clients) {
        _clients  = [[NSMutableArray alloc] init];
    }
    return _clients;
}

@end
