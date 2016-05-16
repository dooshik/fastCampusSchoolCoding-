//
//  main.m
//  160515reverse
//
//  Created by User on 2016. 5. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "reverse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        reverse *rv = [[reverse alloc]init];
//        NSInteger rV = [rv answer:3145];
//        NSLog(@"%zd",rV);
        
        NSInteger rV =[rv divideNum:3145];
        NSLog(@"%zd",rV);
        
    }
        return 0;
}
