//
//  DataCenter.m
//  HomieNSDictionary20160628
//
//  Created by User on 2016. 6. 28..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@end
@implementation DataCenter
+(instancetype)defultData{
    static DataCenter *dataCenter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter =[[DataCenter alloc]init];
//        dataCenter.dic = @{@"1월":@"추워,귤",@"2월":@"춥지,귤귤"};
        dataCenter.dic = @{@"06":@[@"추워",@"귤"],
                           @"2월":@[@"춥지",@"귤귤"]};
    });
    return dataCenter;
}


@end
