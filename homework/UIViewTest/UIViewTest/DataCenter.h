//
//  DataCenter.h
//  UIViewTest
//
//  Created by User on 2016. 6. 5..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 로그인 가능여부 
 가입 
 autologin
 username
 */
@interface DataCenter : NSObject
+(instancetype) shareIdInstance;
-(NSArray *) IdAndPassWordList;
-(void) saveId:(NSString *) Identity savePw:(NSString *) PassWord;
//로그인
-(BOOL)isCheckLoginWithID:(NSString *)userID withPW:(NSString *)userPW;
//가입
-(BOOL)singupWithID:(NSString *)userID withPW:(NSString *)userPW;
//AutoLogin
-(BOOL)autoLogin;
-(void)setAutoLogin:(BOOL)isAutoLogin;

-(NSString *)userName;
-(void)setUserName:(NSString *)userName;
@end
