//
//  MyClass.m
//  AdjList
//
//  Created by User on 2016. 5. 30..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

@end
@interface MyClass ()
@property (readwrite) NSInteger vertex;

@end

@implementation

-(instancetype)initWithVertex:(NSInteger)vertex{
    self=[super init];
    if(self){
        //init
    }
    return self;
}

@end
