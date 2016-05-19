//
//  leapMonth:Object-C.m
//  practice leapMonth
//
//  Created by User on 2016. 5. 12..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "leapMonth:Object-C.h"


@implementation leapMonth_Object_C
//윤달 구하는 식
-(BOOL)leapMonth:(NSInteger)year{
    BOOL result = false;
    if(year%4==0 && year%100 !=0 && year%400==0){
        result=29;
    }else{
        result=28;
    }
    
    return result;
    
}

//달의 마지막 날을 구하는 식
-(NSInteger)monthLastDay:(NSInteger)year lastmonth:(NSInteger)month{
    NSInteger result =1;

    switch (month) {
        case 1: case 3 : case 5 : case 7 :case 8 : case 10 : case 12 :
            result=31;
            break;
        case 2 :
            result= [self leapMonth:year];
        case 4: case 6 : case 9 : case 11 :
            result = 30;
        
        default:
            break;
    }
    return result;
}

-(NSInteger)questionYear:(NSInteger)year day:(NSInteger)date{
    NSInteger month = 1;
    NSInteger lastMonthOfLastday = 0;
    NSInteger days =1;
    NSInteger finalday =1;
    while (days>0) {
        days -=[self monthLastDay:month];
        
        month++;
        
    }
    
    lastMonthOfLastday= days+date;
    
    finalday = year*10000+(month-1)*100+lastMonthOfLastday;
    
    return date;
}







//카운트해서 나온 숫자를 더하는 함수


//-(NSInteger)triangle:(int) num{
//    int result=1;
//    for(int i=0 ; i<=num; ++i){
//        result +=i;
//    }
//    return result;
//}
//

//카운트를 하는 함수


//date구하기
-(NSInteger)day:(NSInteger)date{
    //카운트하는 함수
    int result = 1;
    int month = 1;
    NSInteger i =1;
          NSInteger count =1;
    while (date>0) {
       date -=[self monthLastDay:month];
        i++;
        count++;
    }
    
    //연도를 구하고
    
    //월을 구하고
    
    //일을 구한다
    
    
    
    return result;
    
    
}


@end
