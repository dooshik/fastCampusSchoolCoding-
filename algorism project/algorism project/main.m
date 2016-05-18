//
//  main.m
//  algorism project
//
//  Created by User on 2016. 5. 18..
//  Copyright © 2016년 Shin. All rights reserved.
//

#include <stdio.h>
#include <string.h>


#include <stdio.h>
#include <string.h>
int a[1000000];
int size =0;

int main() {
    int n;
    scanf("%d",&n);
    
    for (int k=0; k<n; k++) {
        char cmd[100];
        scanf("%s",cmd);
        if (!strcmp(cmd,"push")) {
            int num;
            scanf("%d",&num);
          
            // push
        } else if (!strcmp(cmd,"top")) {
            if (size==0) {
                printf("%d",-1);
            }else {
                printf("%d",size-1);
            }
            
        } else if (!strcmp(cmd,"size")) {
            // size
        } else if (!strcmp(cmd,"empty")) {
            // empty
        } else if (!strcmp(cmd,"pop")) {
            // pop
        }
    }
    return 0;
}

























//int main(){
//    int n;
//    scanf("%d",&n);
//    
//    int a[100000];
//    int size = 0;
//    
//    
//    for (int k =0 ; k<n; k++) {
//        
//        char cmd[100];
//        scanf("%s",cmd);
//        if(!strcmp(cmd,"push")){
//            int num;
//            scanf("%d",&num);
//            
//            a[size]=num;
//            size +=1;
//            
//            
//            //push
//            
//        }else if(!strcmp(cmd,"top")){
//            
//            printf("%d", a[size-1]);
//            
//        }else if(!strcmp(cmd,"size")){
//            printf("%d",size);
//        }else if(!strcmp(cmd,"empty")){
//            if (size==0) {
//                printf("%d", 1);
//            }else {
//                printf("%d" , 0);
//            }
//        }else if(!strcmp(cmd,"pop")){
//            if (size==0){
//                printf("%d", -1);
//            }else{
//                printf("%d",a[size-1]);
//            }
//            
//            size = size-1;
//        }
//            
//    }
//    return 0;
//}