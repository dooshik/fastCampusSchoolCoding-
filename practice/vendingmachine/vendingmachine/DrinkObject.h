//
//  DrinkObject.h
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DrinkObject : NSObject

@property (nonatomic, readonly, strong) NSString *name;
@property (nonatomic, readonly, assign) NSInteger cost;

-(instancetype)initWithName:(NSString *)name cost :(NSInteger)cost;

@end
