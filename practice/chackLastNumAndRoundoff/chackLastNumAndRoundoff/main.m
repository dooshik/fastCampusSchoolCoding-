//
//  main.m
//  chackLastNumAndRoundoff
//
//  Created by User on 2016. 5. 20..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MyClass *mc = [[MyClass alloc]init];
        NSInteger TS = [mc tensquare:2];
        NSLog(@"%zd",TS);
    }
    return 0;
}
