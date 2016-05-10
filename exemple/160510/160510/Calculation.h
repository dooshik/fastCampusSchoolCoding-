//
//  Calculation.h
//  160510
//
//  Created by User on 2016. 5. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Calculation : NSObject

-(void)addSubjectScore:(NSInteger)score;
-(CGFloat)averageScore;
-(NSString *)rank:(CGFloat)score;
-(CGFloat)point:(NSString *)rank;
@end
