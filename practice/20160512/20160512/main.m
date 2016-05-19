//
//  main.m
//  20160512
//
//  Created by User on 2016. 5. 12..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyClass.h"





int main(int argc, const char * argv[]) {
    @autoreleasepool {
       NSLog(@"Hello, World!");
        // insert code here...
//        int len = lastNum();
//        printf ("%d", len);
        
        MyClass *mC =[[MyClass alloc]init];
        
        CGFloat round = [mC roundingNum:2 num:3.14];
        NSLog(@"round=%f" ,round );
        
       // float result = roundingNum(2,3.14);
        //NSLog(@"%f",result);
        
        
        
       
    }
    return 0;
}
