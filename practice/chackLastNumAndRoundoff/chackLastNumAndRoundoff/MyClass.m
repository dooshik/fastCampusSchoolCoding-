//
//  MyClass.m
//  chackLastNumAndRoundoff
//
//  Created by User on 2016. 5. 20..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

// 10의 제곱을 하는 함수
-(NSInteger)tensquare:(NSInteger)num{
    NSInteger result = 1;
    for (int i=0; i<num; i++) {
        result *=10;
        
    }
    return result;
}
// 


@end
