//
//  main.m
//  9days
//
//  Created by User on 2016. 5. 5..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

float roomNum = 3.3;

int pyounNum(float RoomNum)
{
    return roomNum / 3.3;
    
}

const float PI = 3.14;

float aaa(float radius)
{
    //2*pi*radius
    
    return 2*PI*radius;
    
}

const float rate = 1300;

float Dollar(float won)
{
    // 금액/환율= 달러
    return won/rate;
}

double practice(double value)
{
    return ((int)((value+0.005)*100))/100;
    
}

int matchingGrade(float Num)
{
    
    int a;
    
    if (Num<=100 && Num>=90){
        a=1;
    }
    else if(Num<90 && Num>=80){
        a=2;
    }
    return a;
 }

void giveMomey(int a){
    switch (a) {
        case 1 :
            //
            printf("전액장학금");
            break;
        case 2 :
            //
            printf("50%%의 장학금");
            break;
        case 3 :
            //
            printf("25%%의장학금");
            break;
            
        default:
            printf("없음");
            break;
    }
}


void absNum(int Num){
    int b;
    
    if(Num<0){
        b= -1*Num;
    }else if(Num>0){
        b=Num;
    }
}
void what(char somthing){
    
    if(somthing>=48 && somthing<=57){
        printf("숫자입니다.");
    }else if(somthing<=90 && somthing<=65 ){
        printf("대문자입니다.");
    }else if(somthing >=97 && somthing<= 122){
        printf("소문자입니다.");
    }
}

void Unnyun(int x){
    
    if((x%4==0 && x%100!=0) || x%400==0){
        printf("윤년 입니다");
    }else{
        printf("윤년이 아닙니다");
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        matchingGrade(90);
        giveMomey(matchingGrade(90));
        Unnyun(2000);
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}