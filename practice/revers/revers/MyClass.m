//
//  MyClass.m
//  revers
//
//  Created by User on 2016. 5. 23..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass
// 10의 제곱함수
-(NSInteger)tenSquare:(NSInteger)number{
    NSInteger result =1;
    for (long i = 0; i<number; i++) {
        result *=10;
       
    }
    return result;
}
//리버스 함수
-(NSInteger)reverse:(NSInteger)num{
    NSInteger result = num;
    NSInteger count =0;
    NSInteger divideNum = num;
    NSInteger answer=0;
    while (result>0) {
        result /=10;
        count++;
    }
    while (count>0) {
        answer +=(divideNum%10)*[self tenSquare:count-1];
        divideNum = divideNum/10;
        count--;
        
    }
    return answer;
}


@end
