//
//  Casher.h
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DrinkObject.h"

@interface Casher : NSObject

//동전 추가 메소드
-(void)addCoinin500;
-(void)addCoinin100;
-(NSInteger)inputMoney;

//@property (nonatomic, readonly) NSInteger inputMoney;

//음료수 사는 메소드
-(BOOL)buyDrink:(DrinkObject *)drink;

//돈 거슬러줄(동전 List)
//{@"%500":count, @"100":count}
-(NSDictionary *)changemoney;
@end
