//
//  DataCenter.m
//  09
//
//  Created by User on 2016. 6. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//
#import "DataCenter.h"

//@end까지 데이터 센터의
@interface DataCenter()

@property (nonatomic,strong) NSMutableArray *firstSectionData;
@property (nonatomic, strong) NSMutableArray *secondSectionData;

@end

@implementation DataCenter

+(instancetype)defaultData{
    
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dataCenter = [[DataCenter alloc]init];
        dataCenter.firstSectionData =[[NSMutableArray alloc]
                                      initWithObjects:@"A",@"B",@"C", nil];
        dataCenter.secondSectionData = [[NSMutableArray alloc]
                                        initWithObjects:@"A",@"B",@"C", nil];
        
    });
    return dataCenter;
}

-(NSMutableArray * )dataForSection:(NSInteger)section{
    
    if (section == 0) {
        return self.firstSectionData;
    }
    
    return self.secondSectionData;
}
//index값이 없는 건 선택해야하는 것 없이 바로 생성만 해주면 되기 때문에
-(void)insertNewItemInSecondSection{
    
    [self.secondSectionData addObject:@"New Data"];
    
}
//index값이 있는건 여러개의 row가 있을때 서택된row가 어떤 값인지 알고 지워야 하기때문에
-(void)removeFirstSectionItemAtIndex :(NSInteger)index{
    
    [self.firstSectionData removeObjectAtIndex:index];
//    [self.secondSectionData removeObjectAtIndex:index];
}

@end