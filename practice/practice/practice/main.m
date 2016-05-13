//
//  main.m
//  practice
//
//  Created by User on 2016. 5. 11..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

bool febMistery(int year);
//짝수 홀수 구분
void evenOrOdd(int num){
    if(num%2==0){
        printf("%d은 짝수입니다.\n",num);
    }else{
        printf("%d은 홀수입니다.\n",num);
    }
}


bool result = false;
void oddOrEven(int num){
    if(num%2==0){
        result=true;
        printf("짝수입니다.\n");
    }else{
        printf("홀수입니다.\n");
    }
    
}
//성적의 평균을 구하는 함수
int math =90;
int scinece = 90;
int korean = 90;
int english = 90;

void scoreAverage(int num){
    
}

//성적 매기기
void scoreaaRank(int num){
    if(100>=num && 90<=num){
        printf("%d등급\n", 1);
    }else if(90>num && 80<=num){
        printf("%d등급\n", 2);

    }else if(80>num && 70<=num){
        printf("%d등급\n", 3);
        
    }else{
        printf("%d등급\n", 4);
        }

}
//성적함수에 따라 장학금주기
void scoreAndMoney(int num){
    switch (num) {
        case 1:
            printf("전액장학금입니다.\n");
            break;
        case 2:
            printf("50%%장학금입니다.\n");
        case 3:
            printf("25%%장학금입니다.\n");
            
        default :
            printf("없음\n");
            break;
    }
}

//달의 마지막
int monthLastDay(int month, int year){
    int result =0;
    
    switch (month) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            result= 31;
            break;
        case 2:
            if(febMistery(year)){
                result=29;
            }else{
                result=28;
            }
            
            break;
            
        case 4:case 6: case 9: case 11:
            result=30;
            break;
            
        default:
            break;
    }
    return result;
}
//윤달구하기
bool febMistery(int year){
    bool result = false;
    if((year%4==0 && year%100!=0)&&year%400) {
        result =true;
    }else{
        result = false;
    }
    
    return result;
}





int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //oddOrEven(21);
        //scoreaaRank(100);
       // scoreAndMoney(4);
        
        
                NSLog(@"Hello, World!");
    }
    return 0;
}
