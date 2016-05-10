//
//  toolbox.m
//  160510
//
//  Created by User on 2016. 5. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "toolbox.h"



@implementation toolbox

-(CGFloat) plus:(CGFloat)num sub2:(CGFloat)num2{
    
    
   return  [self zerosan: (CGFloat)num+num2];
    
    
}

-(CGFloat) sub3:(CGFloat)num sub4:(CGFloat)num2{
    return [self zerosan: num-num2];
    
}
-(CGFloat) sub5:(CGFloat)num sub6:(CGFloat)num2{
   return  [self zerosan: num*num2];
    
}
-(CGFloat) sub7:(CGFloat)num sub8:(CGFloat)num2{
  return  [self zerosan: num/num2];
    
}

-(CGFloat) zerosan:(CGFloat)num{
    return (CGFloat)((int)((num+0.0005)*1000))/1000;
    
}

//센치 인치
-(CGFloat) chToInch:(CGFloat)num {
    return  num * 0.393710;
    
}
-(CGFloat) inchToCh:(CGFloat)num {
    return  num * 2.35;
    
}

//평수
-(CGFloat) krRoomSizeToM2:(CGFloat)num {
    return  num * 3.305785;
}
-(CGFloat) M2TokrRoomSize:(CGFloat)num {
    return  num * 0.3025;
}
//화씨 섭씨
-(CGFloat) cToF:(CGFloat)num {
    return  num * -17.222222;
}
-(CGFloat) fToC:(CGFloat)num {
    return  num * 33.8;
}
//KB MB GB
-(CGFloat) kbToMb:(CGFloat)num {
    return  num / 1024;
}
-(CGFloat) mbToGb:(CGFloat)num {
    return  num / 1024;
}

@end
