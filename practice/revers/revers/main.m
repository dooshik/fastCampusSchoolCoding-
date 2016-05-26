//
//  main.m
//  revers
//
//  Created by User on 2016. 5. 23..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyClass *mc = [[MyClass alloc]init];
        NSInteger Mc =[mc reverse:3145];
        NSLog(@"%zd", Mc);
        
//        NSInteger ts = [mc tenSquare:3];
//        NSLog(@"%zd", ts);
    }
    return 0;
}
