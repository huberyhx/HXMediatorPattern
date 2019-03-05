//
//  ViewController.m
//  HXMediatorPattern
//
//  Created by haoxu.wang on 2019/3/5.
//  Copyright © 2019年 haoxu.wang. All rights reserved.
//

#import "ViewController.h"
#import "HXAbstractClient.h"
#import "HXClientWang.h"
#import "HXClientLi.h"
#import "HXClientZhang.h"
#import "HXMediatorBlack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)go:(UIButton *)sender {
    HXMediatorBlack *mediatorBlack = [[HXMediatorBlack alloc] init];
    NSLog(@"我是 : %@", mediatorBlack.name);
    
    HXClientLi *clientLi = [[HXClientLi alloc] init];
    NSLog(@"我是 : %@, 我的房屋价格 : %ld", clientLi.name, clientLi.price);
    
    HXClientZhang *clientZhang = [[HXClientZhang alloc] init];
    NSLog(@"我是 : %@, 我的房屋价格 : %ld", clientZhang.name, clientZhang.price);
    
    HXClientWang *clientWang = [[HXClientWang alloc] init];
    NSLog(@"我是 : %@, 我有多少钱 : %ld", clientWang.name, clientWang.money);
    
    // 卖家联系黑中介要卖房, 黑中介记录卖家信息
    [mediatorBlack addClintProfile:clientLi];
    [mediatorBlack addClintProfile:clientZhang];
    
    // 小王找到黑中介要买房, 黑中介看看小王能买得起谁的房子
    NSArray<HXAbstractClient *> *array = [mediatorBlack screenHouseForBuyer:clientWang];
    NSLog(@"最终小王能买得起 %ld 套房子", array.count);
    
}

@end
