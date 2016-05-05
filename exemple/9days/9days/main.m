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



int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
