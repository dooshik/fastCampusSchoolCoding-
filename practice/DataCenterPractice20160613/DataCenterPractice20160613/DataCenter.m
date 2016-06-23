//
//  DataCenter.m
//  DataCenterPractice20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()

@property (nonatomic,strong) NSArray *settingTableData;
@property (nonatomic,strong) NSArray *weatherData;
@property (nonatomic,strong) NSArray *settingHeaderTitle;


@end

@implementation DataCenter

+(instancetype)defualtData{
    static DataCenter *dataCenter = nil;
    

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter =[[DataCenter alloc]init];
        dataCenter.settingTableData = @[@[@"]]
    });
}
@end
