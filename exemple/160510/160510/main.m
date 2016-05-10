//
//  main.m
//  160510
//
//  Created by User on 2016. 5. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Calculation.h"

#import "toolbox.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      //calculationCL 객체로 만들고
        
        toolbox *tb = [[toolbox alloc]init];
        Calculation *csClass = [[Calculation alloc]init];
        //객체 메소드 실행
        [csClass addSubjectScore:100];
        [csClass addSubjectScore:85];
        [csClass addSubjectScore:75];
        
        CGFloat average = [csClass averageScore];
        NSLog(@"average = %f",average);
        
        NSString *Rank = [csClass rank:average];
        NSLog(@"average = %@" , Rank);
        
        CGFloat point = [csClass point:Rank ];
        NSLog(@"csPoint =%f", point);
        
        CGFloat add =[ tb plus:5.0 sub2:4.0];
        NSLog(@"csPoint =%f",add );
        CGFloat min =[ tb sub3:5 sub4:4];
        NSLog(@"csPoint =%f",min );
        CGFloat kkob =[ tb sub5:5 sub6:4];
        NSLog(@"csPoint =%f",kkob );
        CGFloat nanusem =[ tb sub7:5 sub8:4];
        NSLog(@"csPoint =%f",nanusem);
       
        
        CGFloat chtoin =[tb chToInch:3.2];
        NSLog(@"chtoin=%f",chtoin );
       
        CGFloat intoch =[tb inchToCh:3];
        NSLog(@"intoch=%f",intoch );
        
        CGFloat krroomsize =[tb krRoomSizeToM2:3];
        NSLog(@"krroomsize = %f",krroomsize );
        
        CGFloat m2tokrroomsize =[tb M2TokrRoomSize:3];
        NSLog(@"m2tokrroomsize = %f",m2tokrroomsize );
       
        CGFloat ctof =[tb cToF:3];
        NSLog(@"ctof = %f",ctof );
  
        CGFloat ftoc =[tb fToC:3];
        NSLog(@"ftoc = %f",ftoc );
     
        CGFloat kbtomb =[tb kbToMb:3];
        NSLog(@"kbtomb = %f",kbtomb );
       
        CGFloat mbtogb =[tb mbToGb:3];
        NSLog(@"mbtogb = %f",mbtogb );
        
    }
    return 0;
}
