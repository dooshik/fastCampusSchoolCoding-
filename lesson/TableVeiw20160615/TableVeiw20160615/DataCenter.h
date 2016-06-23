//
//  DataCenter.h
//  TableVeiw20160615
//
//  Created by User on 2016. 6. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
+(instancetype)defaultDate;
- (NSInteger)numberOfSectionsForSettingTable;

- (NSArray *)settingTableDataForSection:(NSInteger)section ;
- (NSInteger)numberOfRowsForSectionInSettingTable:(NSInteger)section;
- (NSString *)settingTableHeaderTitleForSection:(NSInteger)section;
@end
