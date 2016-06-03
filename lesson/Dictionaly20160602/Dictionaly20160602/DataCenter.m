//
//  DataCenter.m
//  Dictionaly20160602
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"


@implementation DataCenter

//실긍톤 변수의 클래스 메소드

+(instancetype) sharedInstance
{
    static DataCenter *dataCenter = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{dataCenter =[[self alloc]init];});
   
    return dataCenter;
    
    
}

-(void)printData
{
    NSLog(@"name is %@,age is %ld", self.name,(long)self.age);
}
@end
