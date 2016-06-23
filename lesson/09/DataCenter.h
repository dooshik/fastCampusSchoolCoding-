//
//  DataCenter.h
//  09
//
//  Created by User on 2016. 6. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>

//@end까지 데이터 센터의
@interface DataCenter : NSObject


+(instancetype)defaultData;

-(NSMutableArray *)dataForSection:(NSInteger)section;

-(void)insertNewItemInSecondSection;

-(void)removeFirstSectionItemAtIndex :(NSInteger)index;

@end

