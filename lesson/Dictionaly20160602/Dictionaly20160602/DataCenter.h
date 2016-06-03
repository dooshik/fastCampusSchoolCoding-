//
//  DataCenter.h
//  Dictionaly20160602
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject
//실긍톤 변수의 클래스 메소드
+(instancetype) sharedInstance;

@property (nonatomic ,strong) NSString *name;
@property (nonatomic ,assign) NSInteger age;

-(void)printData;

@end
