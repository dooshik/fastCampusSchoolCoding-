//
//  reverse.m
//  160515reverse
//
//  Created by User on 2016. 5. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "reverse.h"

@implementation reverse
//10의 제곱을 하는 함수
-(NSInteger)tenSquare:(NSInteger)num{
    NSInteger result = 1;
    for (int i=0; i<num; i++) {
        result *=10;
        
    }
    return result;
}
//숫자를 나눠서 수를 구하는 함수
-(NSInteger)divideNum:(NSInteger)Num{
   //NSInteger result = 1;
    while (Num !=0) {
        Num %= 10;
        Num /= 10;
    }
    return 0;
}
//숫자의 제곱근을 구하는 함수
-(NSInteger)squareValue:(NSInteger)n{
    NSInteger count =1;
    while (n>0) {
        n /=10;
        count++;
    }
    return count;
}

-(NSInteger)answer:(NSInteger)realNum{
    NSInteger count = realNum;
    NSInteger dVN = realNum;
//    NSInteger tS = realNum;
    NSInteger result = 1;
    for (int i=0; i<[self squareValue:count]; i++) {
        result=[self divideNum:dVN];
        //*[self tenSquare:[self squareValue:count]];
    }
    
    return result;
}

@end
