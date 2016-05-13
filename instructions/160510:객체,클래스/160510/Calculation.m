//
//  Calculation.m
//  160510
//
//  Created by User on 2016. 5. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "Calculation.h"

@implementation Calculation
{
    NSMutableArray *subjects;
    //인스턴스 변수
}
//과목점수를 추가하는 함수
- (instancetype)init
{
    self = [super init];
    if (self) {
        subjects = [[NSMutableArray alloc]initWithCapacity:1];
    }
    return self;
}

-(void)addSubjectScore:(NSInteger)score{
        
}


//성적 평균 구하기 추가 메소드

-(NSString *)rank:(CGFloat)score
{
    NSString *rankStr;
    if( score>=90){
        rankStr = @"+A";
        
    }else if(score<90 && score>=80){
        rankStr = @"A";

        
    }else if(score<80 && score>=70){
        rankStr = @"+B";

    }else if(score<70 && score>=60){
        rankStr = @"B";
        
    }else if(score<60 && score>=50){
        rankStr = @"+C";

        
    }else {
        rankStr = @"F";

    }
    
    return rankStr;
}
-(CGFloat)point:(NSString *)rank
{
    
    CGFloat scPoint;
    if([rank isEqualToString: @"+A"]){
        scPoint = 4.5;
    }else if([rank isEqualToString: @"A"]){
         scPoint = 4;
    }else if([rank isEqualToString: @"+B"]){
         scPoint = 3.5;
    }else if([rank isEqualToString: @"B"]){
         scPoint = 3;
    }else if([rank isEqualToString: @"+C"]){
         scPoint = 2.5;
    }else {
        scPoint =0;
    }

    return scPoint;




}

//과목점수를 추가하는 함수
-(void)addSubjectScore:(NSInteger)score
{
    //초기화
    if (subjects == nil) {
        subjects=[[NSMutableArray alloc] initWithCapacity: 1];
    }
    
    //NSNumber(참조형 타입)으로 변환
    //numberWithInteger  NSNumber Class Method
    NSNumber *scoreNum = [NSNumber numberWithInteger:score];
    //어레이에 추가
    [subjects addObject:scoreNum];
}

//과목의 총점

-(NSInteger)totalScore
{
    NSInteger totalScore =0;
    for (NSNumber *score in subjects){
        totalScore += score.integerValue;
    }
    return totalScore;
}
//평균을 구하는놈

-(CGFloat)averageScore
{
    
    if(subjects.count>0){
        CGFloat averageS = ((CGFloat)[self totalScore])/subjects.count;
        
        return averageS;

    }else{
        return 0;
    }

}
@end
