//
//  Casher.m
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "Casher.h"

@interface Casher ()

@property (nonatomic) NSInteger inputMoney;


@end


@implementation Casher

- (instancetype)init
{
    self = [super init];
    if (self) {
        _inputMoney  = 0;
    
    }
    return self;
}
//동전추가
-(void)addCoinin500
{
    self.inputMoney +=500;
}
-(void)addCoinin100
{
    self.inputMoney +=100;
}
-(BOOL)buyDrink:(DrinkObject *)drink
{
    //살수 있음
    if(self.inputMoney >= drink.cost){
        self.inputMoney -= drink.cost;
        return YES;
    }else{
        //살수 없음
        return NO;
    }
}
-(NSDictionary *)changemoney //여기서도 m이 소문자로 되어있는데 고시면 chasher에 문제가 생겨서 방치.
{
    //잔돈초기화
    NSMutableDictionary *changeDic =[[NSMutableDictionary alloc] initWithDictionary:@{@"500":@0 ,@"100":@0}];
    //
    if (self.inputMoney >= 500) {
        NSInteger coin500 = self.inputMoney /500;
        //
        [changeDic setValue:[NSNumber numberWithInteger:coin500] forKey:@"500"];

        self.inputMoney %= 500;
    }
    if (self.inputMoney>=100) {
        NSInteger coin100 = self.inputMoney/100;
        [changeDic setValue:[NSNumber numberWithInteger:coin100] forKey:@"100"];
        self .inputMoney %=100;
    }
    self.inputMoney = 0;
    return changeDic;
    
}
@end
