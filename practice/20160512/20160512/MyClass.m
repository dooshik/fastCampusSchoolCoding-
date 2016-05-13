//
//  MyClass.m
//  20160512
//
//  Created by User on 2016. 5. 12..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "MyClass.h"



@implementation MyClass
//제곰을하는 함수
int square(int num){
    int result=1;
    for (int i=0; i<num; i++) {
        result *= 10;
    }
    return result;
}

//카운트를 가지고 반올림 하는 변수


float roundingNum(int num, float num1){
    float result =0;
    result = (float)((int)((num1+(5/square(num)))*square(num-1)))/square(num-1);
    
    return result;
}


//카운터 하는 변수
int lastNum(float num){
    int intvalue = num;
    int count = 0;
    while ((float)intvalue != num){
        
        num *=10;
        
        count++;
    }
    return count;
    
}

//오브젝트 c 제곱을 하는 함수
-(NSInteger) lastNum:(CGFloat)lstNum{
    NSInteger intValue = lstNum;
    NSInteger count = 0;
    while((CGFloat)intValue !=lstNum){
        lstNum *=10;
        count++;
    }
    return count;
}

-(CGFloat)roundingNum:(NSInteger)rdNum num:(CGFloat)num{
    CGFloat result = 0;
   result= ((int)((num + 5/[self square1:rdNum])*[self square1:rdNum-1]))/[self square1:rdNum-1];
    return result;
}


-(CGFloat)square1:(NSInteger)sqNum{
    int result = 1;
    for(int i=0 ; i<sqNum ; i++){
        result *=10;
    }
    
    return result;
}









@end




