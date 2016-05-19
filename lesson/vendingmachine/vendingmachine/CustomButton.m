//
//  CustomButton.m
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "CustomButton.h"
@interface CustomButton()

@property (nonatomic,weak) UIImageView*drikImg;
@property (nonatomic,weak) UILabel *titleLB;
@property (nonatomic,weak) UIButton *actionBtn;
//LB은 항상 두글자를 다 대문자로 쓰시고 Btm 이나 Img Msg는 맨 앞글자만 대문자로 쓰시는데 습관인가요 관습인가요?
@end
@implementation CustomButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createView];
    }
    return self;
}

-(void) createView
{
    UIImageView *drinkImg = [[UIImageView alloc]init];
    [self addSubview:drinkImg];
    self.drikImg = drinkImg;
    
    UILabel *titleLB =[[UILabel alloc]init];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.textColor = [UIColor blackColor];
    titleLB.font= [UIFont systemFontOfSize:15];
    [self addSubview:titleLB];
    self.titleLB = titleLB;
    
    UIButton *actionBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    [actionBtn addTarget:self action:@selector(onTouchUpInsideActionBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:actionBtn];
    self.actionBtn =actionBtn;
    
}

-(void)updateLayout
{
    [self.drikImg setFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height-22)];
    [self.titleLB setFrame:CGRectMake(0, self.frame.size.height -22, self.frame.size.width, 22)];
    [self.actionBtn setFrame:CGRectMake(0, 0,self.frame.size.width, self.frame.size.height)];
}

-(void)setTitle:(NSString *)title
{
    [self.titleLB setText:title];
}
-(void)setImageName:(NSString *) imageName
{
    [self.drikImg setImage:[UIImage imageNamed:imageName]];
}

-(void)onTouchUpInsideActionBtn:(UIButton *)sender
{
    if([self.delegate respondsToSelector: @selector (didSelecteCustomButton:)]){
        [self.delegate didSelecteCustomButton:self];
    }
}

@end
