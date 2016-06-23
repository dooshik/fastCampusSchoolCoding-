//
//  WeatherTableViewController.h
//  UITableViewControllerCustomizing20160608
//
//  Created by User on 2016. 6. 8..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef  NS_ENUM(NSInteger, WeatherType){
    WeatherTypeKorea = 0,
    WeatherTypeWorld
};

@interface WeatherTableViewController : UITableViewController

@property (nonatomic) WeatherType weatherType;

@end
