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

void googoo(int dan){
    for (int i = 1; i<10; i++) {
        printf("%d * %d = %d\n", dan, i, dan*i);
    }
}
void factorial(int num){
    int result =1;
    for (int i =1; i<=num; i++) {
        //i * i+1 * i+2
        result *= i;
    }
    printf("%d는 factorial은 %d",num, result);
}
//369 나
void game(int ans){
    for (int i = 1; i<=29; i++) {
        // ans%10/3==0
        if (i%10==3 || i%10==6 || i%10==9) {
            printf("*\n");
        }else{
            printf("%d\n",i );
        }
            
     
        
    }
}

void hardGame(int ans){
    for(int i =1; i>=1;  i++){
        //
        
        }
    for (int j=10; j>=10; j++){
        
    }
           }
        
//스왑 함수 만들기

//삼각수 구하기


int triangularNum(int Num){
    int result = 0;
    for(int i=0; i<=Num; i++ ){
        result += i;
        
    }
    return result;
}
//삼각수 구하기 2
void triangularNum1(int num,int value){
    
    //두수 사이에 5로 나눳을때 나머지가 0인 숫자를 구하고 그걸 더한다
    //숫자 두개사이의 숫자를 불러 올 수 있는 코드

    for (int i = num; i<=value; i++) {
        
        if(i%5==0){
            int triNum = triangularNum(i);
            printf("%d\n",triNum);
        }
        
    }
}
//각 자리수 더하는 함수

void addAllNum(int num){
// 숫자를 나눠주는 변수 , 나눈 변수들 중에 마지막 한리 수만 나미는 변수 , 그 함수들을 더하는 변수
     int result = 0;
    while (num>0) {
     result  += num%10;
        num=num*0.1;
    }
    
    printf("%d\n",result);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
//        factorial(5);
//        game(10);
        // insert code here...
//        triangularNum(10);
        addAllNum(123);
      //  triangularNum1(6, 25);
        NSLog(@"Hello, World!");
    }
    return 0;
}

