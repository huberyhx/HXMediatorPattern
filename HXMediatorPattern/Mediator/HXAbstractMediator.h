//
//  HXAbstractMediator.h
//  HXMediatorPattern
//
//  Created by haoxu.wang on 2019/3/5.
//  Copyright © 2019年 haoxu.wang. All rights reserved.
//  抽象中介者

#import <Foundation/Foundation.h>
#import "HXAbstractClient.h"

NS_ASSUME_NONNULL_BEGIN

@interface HXAbstractMediator : NSObject

/** 中介名字 */
@property (nonatomic,copy) NSString *name;

/** 所有客户 */
@property (nonatomic,strong) NSMutableArray<HXAbstractClient *> *clients;

/** 添加客户资料 */
- (void)addClintProfile:(HXAbstractClient *)client;

/** 我要买房 */
- (NSArray<HXAbstractClient *> *)screenHouseForBuyer:(HXAbstractClient *)buyer;

@end

NS_ASSUME_NONNULL_END
