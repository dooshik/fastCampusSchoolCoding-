//
//  leapMonth:Object-C.h
//  practice leapMonth
//
//  Created by User on 2016. 5. 12..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface leapMonth_Object_C : NSObject
-(NSInteger)questionYear:(NSInteger)year day:(NSInteger)date;
-(NSInteger)monthLastDay:(NSInteger)month;
-(BOOL)leapMonth:(NSInteger)year;

@end
