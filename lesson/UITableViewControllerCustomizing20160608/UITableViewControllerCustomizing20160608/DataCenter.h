//
//  DataCenter.h
//  UITableViewControllerCustomizing20160608
//
//  Created by User on 2016. 6. 8..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeatherTableViewController.h"
typedef NS_ENUM(NSInteger, SettingRow){
    settingRowSound= 0,
    settingRowVibrate
};


@interface DataCenter : NSObject
+ (instancetype)defaultData;

-(NSInteger)numberOfSectionsforSettingTable;
-(NSArray *)settingTableDataForSection:(NSInteger)section;
-(NSInteger)numberOfRoewsforSectioninSettingTable:(NSInteger)section;
-(NSString *)settingTableHeaderTitleForSection:(NSInteger)section;
-(void)setSettingOn:(SettingRow)function isOn:(BOOL)isOn;
-(BOOL)inOnForSetting:(SettingRow)function;
-(NSArray *)dataForWeather:(WeatherType)type;
@end
