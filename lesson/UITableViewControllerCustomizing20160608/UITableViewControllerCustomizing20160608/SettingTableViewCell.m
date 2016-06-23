//
//  SettingTableViewCell.m
//  UITableViewControllerCustomizing20160608
//
//  Created by User on 2016. 6. 8..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SettingTableViewCell.h"


@implementation SettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}
-(void)switchValueChanged:(UISwitch *)sender{
    NSLog(@"Switch %d", sender.isOn);
    [self.delegate SettingTableViewCellSwitchValueChanged:self isOn:sender.isOn];
}
//뷰가 그려질때 마다 불러질 메소드
-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self.settingSwitch==nil){
          self.settingSwitch =[[UISwitch alloc]init];
        self.accessoryView =self.settingSwitch;
        [self.settingSwitch addTarget:self
                               action:@selector(switchValueChanged:)
                     forControlEvents:UIControlEventValueChanged];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
