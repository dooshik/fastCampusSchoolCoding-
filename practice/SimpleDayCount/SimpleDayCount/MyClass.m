//
//  MyClass.m
//  SimpleDayCount
//
//  Created by User on 2016. 5. 24..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass


-(NSInteger)dateChange:(NSInteger)num{
    NSInteger count = 1;
    NSInteger result =0;
    while (num>27) {
        count++;
        switch (count) {
            case 1: case 3 :case 5 :case 7 :case 8 :case 10 :case 12 :
                result = 31;
                break;
            case 2:
                result =29;
                break;
            case 4: case 6: case 9: case 11:
                result= 30;
            default:
             break;
        }
        num = num-result;
      
    }
   return count;
}
-(NSInteger)dateChange1:(NSInteger)Num{
    NSInteger result =0;
    NSInteger a =0;
    for (int i =1; i<=[self dateChange:Num]-1; i++) {
        
            switch (i) {
            case 1: case 3 :case 5 :case 7 :case 8 :case 10 :case 12 :
                a= 31;
                    break;
            case 2:
                a =29;
                    break;
            case 4: case 6: case 9: case 11:
                a= 30;
        
                    break;
                default:
                    break;
         
        
    }
        result +=a;
}
    return result;
}
-(NSInteger )dateChangeFinal:(NSInteger)num{
    NSInteger yearMonthDate=0;
    yearMonthDate = ([self dateChange:num]-1)*100 +20070000+ (num-([self dateChange1:num]));
    
    return yearMonthDate;
}


@end
