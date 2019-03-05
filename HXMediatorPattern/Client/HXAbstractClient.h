//
//  HXAbstractClient.h
//  HXMediatorPattern
//
//  Created by haoxu.wang on 2019/3/5.
//  Copyright © 2019年 haoxu.wang. All rights reserved.
//  抽象同事  也就是抽象顾客

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HXAbstractClient : NSObject

/** 客户名字 */
@property (nonatomic,copy) NSString *name;

/** 如果作为买家, 我又多少钱 */
@property (nonatomic,assign) NSInteger money;

/** 如果作为卖家, 我得房子值多少钱 */
@property (nonatomic,assign) NSInteger price;

@end

NS_ASSUME_NONNULL_END
