//
//  DataCenter.m
//  TableVeiw20160615
//
//  Created by User on 2016. 6. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"
@interface DataCenter()

@property (nonatomic, strong) NSArray *settingTableData;
@property (nonatomic, strong) NSArray *weatherData;
@property (nonatomic, strong) NSArray *settingHeaderTitle;

@end

@implementation DataCenter

+(instancetype)defaultDate{
    
    static DataCenter *dataCenter =nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken,^{
        dataCenter =[[DataCenter alloc]init];
        dataCenter.settingTableData =@[@[@"School",@"Camp"],@[@"한국날씨",@"세계날씨"]];
        dataCenter.settingHeaderTitle =@[@"FastCampus",@"weather"];
    });
    return dataCenter;
    
}
//헤더 타이틀의 갯수를 구한다.이말은 곳 섹션의 갯수를 구하는 것과 같다.
- (NSInteger)numberOfSectionsForSettingTable {
    return [self.settingHeaderTitle count];
}
//셋팅테이블에 있는 어떤섹션의 포함된 데이터 값을 가져온다.
- (NSArray *)settingTableDataForSection:(NSInteger)section {
    return (NSArray *)self.settingTableData[section];
}
//테이블에 있는 어떤섹션의 로우 갯수를 구한다.
- (NSInteger)numberOfRowsForSectionInSettingTable:(NSInteger)section {
    //
    return [[self settingTableDataForSection:section] count];
}

- (NSString *)settingTableHeaderTitleForSection:(NSInteger)section {
    return (NSString *)self.settingHeaderTitle[section];
}


@end
