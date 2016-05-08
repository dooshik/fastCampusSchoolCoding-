//
//  main.m
//  practice 2
//
//  Created by User on 2016. 5. 6..
//  Copyright © 2016년 Shin. All rights reserved.
//




#import <Foundation/Foundation.h>

void zzacksoo(int Num){
    if (Num%2==0){
        printf("짝수\n");
        
    }else{
        printf("홀수\n");
    }
}

void scoreRank(float score){
    
    if(score<=100 || score>=90){
        printf("a\n");
    }else if(score<90 || score<= 80){
        printf("a\n");
        
    }
    
    
}

void scholashinWithGrade(int Num){
    
    switch (Num) {
        case 1 :
            printf("전액장학금\n");
            break;
        case 2 :
            printf("장학금 50%%\n");
            break;
        case 3 :
            printf("장학금 25%%\n");
            break;
        case 4 :
            printf("없음\n");
            break;
            
        default:
            break;
            
    }
    
}

void lastDayOfMonth(int Num){
    switch (Num) {
        case 1:
            printf("31\n");
            break;
        case 2:
            printf("29\n");
            break;
        case 3:
            printf("31\n");
            break;
        case 4:
            printf("30\n");
            break;
        case 5:
            printf("31\n");
            break;
        case 6:
            printf("30\n");
            break;
        case 7:
            printf("31\n");
            break;
        case 8:
            printf("31\n");
            break;
        case 9:
            printf("30\n");
            break;
        case 10:
            printf("31\n");
            break;
        case 11:
            printf("30\n");
            break;
        case 12:
            printf("31\n");
            break;
            
        default:
            break;
    }
}

void absoluyNum(int Num){
    
    int d;
    if(Num<0){
        d= Num*-1;
    }else{
        d =Num;
    }printf("%d",d);
    
}
//입력값으로 알파벳 소문자 대문자 숫자 를 구별하는 함수
void checkrAplabet(int Num){
    if(Num >=48 && Num<=57){
        printf("나는 숫자 입니다.\n");
        if(Num>=65 && Num<=90){
            printf("나는 대문자 알파벳입니다\n");
            if(Num>=97 && Num<=122){
                printf("나는 소문자 알파벳입니다\n");
            }
        }
    }
}



//윤년 구하는 문제
// 윤년은 4년마다 돌아온다 / 100으로 떨어지는 해는 윤년이 아니다 하지만 그중 400년으로 떨어지는해는 또 윤년이다.
void when31Days(int num){
    
    if(num%4==0 &&!num%100==0){
        printf("%d은 윤년입니다\n",num);
    }else if(num%100==0 && num%400==0){
        printf("%d은 윤년입니다\n",num);
    }else{
        printf("%d은 윤년이 아닙니다.\n",num);
    }
}

void when31Days2(int num){
    
    if((num%4==0 &&!num%100==0) || num%400==0){
        printf("%d은 윤년입니다\n",num);
    }else{
        
        printf("%d은 윤년이 아닙니다.\n",num);
    }
}
//삼각수 구하기
//
void triangleNum(int num){
    int result =0;
    for (int i=1; i<=num; i++ ) {
        result += i;
    }printf("%d\n", result);
}
//삼각수 구하기 2
//두수사이의 5의배수의 합
void triangleNum2(int num,int num2){
    int result =0;
    for (int i=num; i<=num2; i++) {
        
        if(i%5==0){
            result +=i;
        }
    }printf("%d\n", result);
}

//각 자리수 더하는 함수
void addAllNumber(int num){
    int result=0;
    for (int i=1; num>0; i++) {
        // 수를 나눠서 한자리 수로 만들 수 있는 함수를 만들어야 한다. num%10 은 함수를 한자리 수로 만들수 있다.
        //
        
        result +=num%10;
        num = num*0.1;
        
    }printf("%d\n",result);
}
//이 함수가 멈출수 있는 제어장치를 하는 부분이 어디인거죠?
//혹시 함수가 멈추게 되는 이유가 num은 인트값인데 0.1이 계속 반복적으로 곱해져서 1자리 수가 되었을때 그 수가 인트 값이 아니기 때문인가요?

//369게임하드모드
void hardmode(int num){
    //숫자를 누나는 변수 , 숫자를 3,6,9,로 파별하는 변수 , 그 외의 값을 나타나게하는 변수 ,
    //1의 자리에서 3,6,9,가 아닐때 다시한번 돌아 갈 수 있게 연산하는 변수
    
    
    bool result = false;
    
    for (int i=1; i<=num; i++) {
        
        for (int j=i; j>0; j = j/10) {
            if(j%10==3 || j%10==6 || j%10==9){
                result =true;
                break;
                
            }else {
                result=false;
            }
        }
        if(result){
            printf("*\n");
        }else{
            printf("%d\n",i);
        }

    }
    
}
//369게임 언리미티드는 혼자 계속 생각하다 답이 안나와서 남이 한걸 참고해서 만들었습니다. bool값에대한 이해도가 떨어졌던게 원인 이었던거 같고
//사실 아직도 잘 모르겠습니다. 그리고 디데이 구하는 건 남이 한 걸 봐도 이해를 못하겠습니다..
int main(int argc, const char * argv[]) {
    //    zzacksoo(2);
    //    scoreRank(100);
    //    scholashinWithGrade(1);
    //    lastDayOfMonth(1);
    //    absoluyNum(-150);
    //checkrAplabet(55);
    //    when31Days2(2020);
    //   triangleNum(-1);
    // triangleNum2(10, 15);
    //addAllNumber(15);
    hardmode(53);
   //game369limit(53);
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}