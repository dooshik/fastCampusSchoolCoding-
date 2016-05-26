//
//  main.m
//  PrimeNumber
//
//  Created by User on 2016. 5. 25..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger limit = 1000000;
        NSMutableArray * prime =[@[] mutableCopy];
        //check가 true이면 소수이다.(지워지지 않는다.) , false면 소수가 아니다.
        NSMutableArray *check = [NSMutableArray  arrayWithCapacity:limit+1];
        for(int i=0 ; i<=limit ; i++){
            [check addObject:@(YES)];
//            [check addObject:[NSNumber numberWithBool:NO]];
        }
        NSLog(@"%zu",[check count]);
        NSMutableArray *primes = [@[] mutableCopy];
        for(NSInteger i= 2; i <=limit;i++){
            if ([check[i] boolValue]==YES) {
                [primes addObject:@(i)];
                for (NSInteger j= i*i; j <=limit;j+=i){
                    check[j] = @(NO);
                }
            }
        }
    
    NSLog(@"%zd",[prime count]);
    }
    return 0;
}
