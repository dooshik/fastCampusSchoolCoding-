//
//  main.m
//  9 object-c start
//
//  Created by User on 2016. 5. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//







#import <Foundation/Foundation.h>
//총점



NSInteger totalSubjects(NSArray *subjects){
    NSInteger totalScore = 0;
    
    for (NSNumber *score in subjects) {
        totalScore += score.integerValue;
    }
    return totalScore;
}


//클래스파일 만들기


int main(int argc, const char * argv[]) {
   
      //  NSArray *subjectList = @[@100,@99,@34,@78,@56,@80];
       NSArray *subjectlList = @[@100 , @99 , @34 , @78 , @52 , @82 , @100];
    NSLog(@"%ld", totalSubjects(subjectlList) );
    return 0;
}

