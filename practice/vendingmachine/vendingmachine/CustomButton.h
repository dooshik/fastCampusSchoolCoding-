//
//  CustomButton.h
//  vendingmachine
//
//  Created by User on 2016. 5. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CustomButtonDelegate;
@interface CustomButton : UIView

@property (nonatomic,weak,nullable) id <CustomButtonDelegate> delegate;

-(void)setImageName:(nullable NSString *) imageName;
-(void)setTitle:(nullable NSString *)title;
-(void)updateLayout;
@end


@protocol CustomButtonDelegate <NSObject>

-(void)didSelecteCustomButton:(nullable CustomButton *)costomBtn;

@end