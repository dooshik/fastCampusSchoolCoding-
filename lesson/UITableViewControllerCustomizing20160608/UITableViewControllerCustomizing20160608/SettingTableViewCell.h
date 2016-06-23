//
//  SettingTableViewCell.h
//  UITableViewControllerCustomizing20160608
//
//  Created by User on 2016. 6. 8..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingTableViewCell;
@protocol SettingTableViewCellDelegate<NSObject>
//스위치의 값이 변경될 때 호출할 메서드
-(void)SettingTableViewCellSwitchValueChanged:(SettingTableViewCell *)cell isOn:(BOOL)isOn;


@end


@interface SettingTableViewCell : UITableViewCell


@property (nonatomic,strong) UISwitch *settingSwitch;
@property (nonatomic,weak) id<SettingTableViewCellDelegate> delegate;

@end
