//
//  DataCenter.m
//  UITableViewControllerCustomizing20160608
//
//  Created by User on 2016. 6. 8..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"

static NSString *const KeySoundSetting =@"UserSoundIsOn";
static NSString *const KeyVibrateSetting =@"UserVibrateIsOn";

@interface DataCenter()
//
@property(nonatomic,strong)NSArray *settingTableData;
//세계날씨 한국날씨
@property(nonatomic,strong)NSArray *weatherDate;
//
@property(nonatomic,strong)NSArray *settingHeaderTitle;


@end
@implementation DataCenter

+ (instancetype)defaultData
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc] init];
        dataCenter.settingTableData =@[@[@"사운드",@"진동"],@[@"세계날씨",@"한국날씨"] ];
        dataCenter.settingHeaderTitle = @[@"설정",@"날씨"];
    });
    
    return dataCenter;
}

-(NSInteger)numberOfSectionsforSettingTable{
    return [self.settingHeaderTitle count];
}
-(NSArray *)settingTableDataForSection:(NSInteger)section{
    return (NSArray *)self.settingTableData[section];
}

-(NSInteger)numberOfRoewsforSectioninSettingTable:(NSInteger)section{
    return [[self settingTableDataForSection:section]count];
}
-(NSString *)settingTableHeaderTitleForSection:(NSInteger)section{
    return (NSString *)self.settingHeaderTitle[section];
}
-(void)setSettingOn:(SettingRow)function isOn:(BOOL)isOn{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSString *key = nil;
    if (function == settingRowSound) {
        key=KeySoundSetting;
    }else{
        key = KeyVibrateSetting;
    }
    [userDefault setBool:isOn forKey:key];
    [userDefault synchronize];
    
    //[userDefault setBool:isOn forKey:]
}
-(BOOL)inOnForSetting:(SettingRow)function{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSString *key = nil;
    if (function == settingRowSound) {
        key=KeySoundSetting;
    }else{
        key = KeyVibrateSetting;
    }
    return [userDefault boolForKey:key];
}
-(NSArray *)dataForWeather:(WeatherType)type{
    if (type == WeatherTypeKorea) {
        return @[@"서울",@"대전",@"대구",@"부산"];
        
    }else{
        return @[@"서울",@"도쿄",@"뉴욕",@"베를린",@"싱가폴",@"알마티"];
    }
}

@end
