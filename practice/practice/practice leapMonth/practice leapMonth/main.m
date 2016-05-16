//
//  main.m
//  practice leapMonth
//
//  Created by User on 2016. 5. 12..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "leapMonth:Object-C.h"

//윤달 구하기

//bool leapMonth(int year){
//    bool result = false;
//    if((year%4==0 && year%100 !=0) && year%400==0){
//        result= true;
//    }else {
//        result=false;
//    }
//    return result;
//}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        leapMonth(2016);
       // printf(5);
    leapMonth_Object_C *lM = [[leapMonth_Object_C alloc]init];
        
        NSInteger lastdays = [lM questionYear:2016 day:100 ];
        NSLog(@"lastdays =%zd",lastdays);
        
        NSLog(@"Hello, World!");
        
        
    }
    return 0;
}
