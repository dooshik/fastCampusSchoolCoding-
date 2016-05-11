//
//  toolbox.h
//  160510
//
//  Created by User on 2016. 5. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface toolbox : NSObject
-(CGFloat) plus:(CGFloat)num sub2:(CGFloat)num2;
-(CGFloat) sub3:(CGFloat)num sub4:(CGFloat)num2;
-(CGFloat) sub5:(CGFloat)num sub6:(CGFloat)num2;
-(CGFloat) sub7:(CGFloat)num sub8:(CGFloat)num2;
-(CGFloat) chToInch:(CGFloat)num;
-(CGFloat) inchToCh:(CGFloat)num;
-(CGFloat) krRoomSizeToM2:(CGFloat)num;
-(CGFloat) M2TokrRoomSize:(CGFloat)num;
-(CGFloat) cToF:(CGFloat)num;
-(CGFloat) fToC:(CGFloat)num;
-(CGFloat) kbToMb:(CGFloat)num;
-(CGFloat) mbToGb:(CGFloat)num;
@end
