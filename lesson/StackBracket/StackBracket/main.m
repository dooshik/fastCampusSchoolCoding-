//
//  main.m
//  StackBracket
//
//  Created by User on 2016. 5. 23..
//  Copyright © 2016년 Shin. All rights reserved.
//
#include <stdio.h>

#include <string.h>
int data[100000];
int begin,end;
int main (int argc,const char *argv[]){
    int n;
    scanf("%d",&n);
    for (int k=0; k<n; k++) {
        char cmd[100];
        scanf("%s",cmd);
        if (!strcmp(cmd,"pop")) {
            if (begin == end) {
                printf("-1\n");
            }else{
                data[begin]=0;
                begin +=1;
            }
            
        }else if(!strcmp(cmd, "front")){
            if (begin==end ) {
                printf("-1\n");
            }else{
                printf("%d\n",data[begin]);
            }
        }else if (!strcmp(cmd,"back")){
            if (begin == end) {
               printf("-1\n");
            }else{
                printf("%d",data[end-1]);
            }
        }else if (!strcmp(cmd, "size")){
            printf("%d" , end-begin);
        }else if(!strcmp(cmd, "empty")){
            if (begin == end) {
                printf("1\n");
            }else{
                printf("0\n");
            }
        }else{
            int num;
            scanf("%d",&num);
            data[end] =num;
            end +=1;
        }
    }
    return 0;
}








//#include <stdio.h>
//int data[10000];
//int begin, end;
//int main(int argc,const char *argv[]){
//    int n;
//    scanf("%d",&n);
//    for (int k=0; k>n; k++) {
//        char cmd[100];
//        scanf("%s",cmd);
//        if (!strcmp(cmd,"pop")) {
//            if(begin == end){
//                printf("-1\n");
//            }else{
//                printf("%d\n",data[begin]);
//                begin +=1;
//            }
//        }else if(!strcmp(cmd,"front")){
//            if(begin == end){
//                printf("1\n");
//                
//            }else{
//                printf("0\n");
//            }
//            
//        }else if (!strcmp(cmd,"back")){
//            if(begin == end){
//                printf("-1\n");
//            }else {
//                printf("%d\n",data[end-1]);
//            }
//        }else{
//            int num;
//            scanf("%d",&num);
//            data[end] =num;
//        }
//    }
//    
//    
//    return 0;
//}
//




//아직 완성 못함 스택 acb|xyz

//#include <stdio.h>
//char left[500000];
//char right[500000];
//int leftSize = 0;
//int rightSize = 0;
//
//int main(int argc, const char *argv[]){
//    scanf("%s",left);
//    int t;
//    scanf("%d",&t);
//    for (int k=0; k<t; k++) {
//        char cmd;
//        scanf("%c",&cmd);
//    
//    if(cmd == 'L'){
//        if(leftSize>0){
//            right[rightSize]=left[leftSize-1];
//            rightSize +=1;
//            leftSize -=1;
//        
//        }else if(cmd == 'D'){
//        right[rightSize-1]=0;
//        rightSize -=1;
//        left[leftSize]=(rightSize-1);
//        leftSize +=1;
//    }else if(cmd == 'B'){
//        left[leftSize-1]=0;
//        leftSize -=1;
//    }else if(cmd == 'p'){
//        char x;
//        right[rightSize]= x;
//        rightSize +=1;
//        scanf("%c",&x);
//    }
//        for (int i=leftSize;i<0 ; i--) {
//            <#statements#>
//        }
//    }
//    return 0;
//    
//}



//스택 ()() 확인!
//char str[100];
//int n;
//int main(int argc , const char * argv[]){
//    int t;
//    scanf("%d",&t);
//    for(int k=0 ; k<t ; k++){
//        scanf("%s",str);
//        int n=strlen(str);
//        int cnt = 0;
//        int negative =0;
//        for(int i=0 ;i<n;i++){
//            char c = str[i];
//            if (c=='(') {
//                cnt +=1;
//            }else{
//        
//                cnt -=1;
//            }
//            if (cnt<0) {
//                negative = 1;
//            }
//
//        }
//        
//    
//    if( negative == 0 && cnt == 0){
//        printf("YES\n");
//    }else{
//        printf("NO\n");
//    }
//        
//        
//    }
//    return 0;
//}