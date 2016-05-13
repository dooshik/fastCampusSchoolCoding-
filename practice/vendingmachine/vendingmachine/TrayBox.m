//
//  TrayBox.m
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "TrayBox.h"
@interface TrayBox()

@property(nonatomic, nullable)NSArray *nameList;
@property(nonatomic, nullable)NSArray *costList;
@property(nonatomic) NSArray *drinkinds;

@end
@implementation TrayBox

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameList = @[@"parra",@"parra",@"parra",@"kaws"];
        self.costList = @[@10000000,@10000000,@10000000,@1000000,];
                          [self createTray];
                    }
    return self;
}

-(void)createTray
{
    NSMutableArray *drinkList = [[NSMutableArray alloc]init];
    for (int i =0; i < maximumDrinkCount; i++){
        NSString *drinkName = _nameList[i];
        NSInteger drinkCost = ((NSNumber *)_costList[i]).integerValue;
        DrinkObject *drink = [[DrinkObject alloc] initWithName:drinkName cost:drinkCost];
        [drinkList addObject:drink];
    }
                              
    self.drinkinds = [[NSArray alloc]initWithArray:drinkList];
                          }

@end
