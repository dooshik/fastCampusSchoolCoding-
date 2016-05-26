//
//  main.m
//  SimpleDayCount
//
//  Created by User on 2016. 5. 24..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        MyClass *mc =[[MyClass alloc]init];
//        NSInteger Mc = [mc dateChange:];
//        NSLog(@"%zd",Mc);
//        NSInteger myClass = [mc dateChange1:100];
//        NSLog(@"%zd",myClass);
        NSInteger myclass = [mc dateChangeFinal:100];
        NSLog(@"%zd" , myclass);
        
    }
    return 0;
}
