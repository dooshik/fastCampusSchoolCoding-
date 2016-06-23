//
//  DataCenter.m
//  UIViewTest
//
//  Created by User on 2016. 6. 5..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "DataCenter.h"

 
@implementation DataCenter
+(instancetype )shareIdInstance{
    static DataCenter *datacenter =nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        datacenter=[[DataCenter alloc]init];
        
    });
    return datacenter;
    
    
}

//전에 저장한 데이터가 있을때 미리 불러와서 저장해 놓고 사용 할때  기본적으로 사용해야하는 데이터가 있을때
//- (instancetype)init
//{
//    self = [super init];
//    if(self){
//        NSLog(@"데이터 초기화");
//        
//    }
//    return self;
//}
//





-(void)saveData:(NSDictionary *)data
{
    
    /*
     1.Document디렉토리 주소 가져오기
     2. 파일 이름 주소에 추가 시키기
     3.파일 있ㄴㄴ지 확인 (없다면 3-1)
      3-1 번들에 있는 파일 주소 가져오기
      3-2 fileManager이용하여 번들에 있는 파일 Document로 복사
     4.파일에 있는 데이터 객페로 만들기
     5.객체에 데이터 추가
     6.객체 파일에 저장하기
     */
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
    NSString *docPath = paths[0];
    NSString *path =[docPath stringByAppendingPathComponent:@"idAndPassWordList.plist"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:path]) {
        
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"idAndPassWordList" ofType:@"plist"];
        [fileManager copyItemAtPath:bundlePath toPath:path error:nil];
    }
    
    NSMutableArray *idAndPassWordList = [[NSMutableArray alloc]initWithArray:[NSArray arrayWithContentsOfFile:path]];
    [idAndPassWordList addObject: data];
    [idAndPassWordList writeToFile:path atomically:NO];
}


-(NSArray *)loadData{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
    NSString *docPath = paths[0];
    NSString *path =[docPath stringByAppendingPathComponent:@"idAndPassWordList.plist"];
    
 
    return [NSArray arrayWithContentsOfFile:path];
}


//로그인
/*
 user List에서 해당 UserID가 있고
 그 ID의 PW가 맞는지 확인 후 맞다면 YES
 마지않으면 NO
 */
-(BOOL)isCheckLoginWithID:(NSString *)userID withPW:(NSString *)userPW{
    //plist에 파일에서 검사
   
    NSArray *userList =[self loadData];
    
    for (NSDictionary *userDic in userList) {
        NSString *selectID = [userDic objectForKey:@"user_id"];
        NSString *selectPW = [userDic objectForKey:@"user_pw"];
        if([selectID isEqualToString:userID] && [selectPW isEqualToString:userPW]){
            return  YES;
            
        }
    }
    return NO;
}






//가입
/*
 user list에서 같은 USER ID가 있는지 확인후 
 없다면 회원 가입 시키고(plist에 저장)
 return YES;
 이미 가입되 회원 ID가 있을시 return NO
 
 파일의 구조(플리스트)
 { user_id :string,
 user_pw:string}
 */
-(BOOL)singupWithID:(NSString *)userID withPW:(NSString *)userPW{
    //plist에 파일에서 저장
    BOOL haveUser = NO;
    NSArray *userList =[self loadData];
    

    for (NSDictionary *userDic in userList) {
        NSString *selectID = [userDic objectForKey:@"user_id"];
        
        if([selectID isEqualToString:selectID]){
            haveUser = YES;
        }
        
    }
    if (!haveUser) {
        NSDictionary *userData =@{@"user_id" :userID, @"user_pw":userPW};
        [self saveData:userData];
        return YES;
        
    }else{
        return NO;
    }

    
 

}
//AutoLogin
-(BOOL)autoLogin{
    //NSuserDefault
    NSNumber *boolNumber =[[NSUserDefaults standardUserDefaults] objectForKey:@"AUTO_LOGIN"];
    return boolNumber.boolValue;
    
    
    return NO;
}
-(void)setAutoLogin:(BOOL)isAutoLogin{
    //NSuserDefault
    
    [[NSUserDefaults standardUserDefaults]setObject:[NSNumber numberWithBool:isAutoLogin] forKey:@"AUTO_LOGIN"];
   // 위에 문장과 같은 역할을 한다. [[NSUserDefaults standardUserDefaults]setBool:isAutoLogin forKey:@"AUTO_LOGIN"];

    
}
//userName
-(NSString *)userName{
     //NSuserDefault
    return NO;
}
-(void)setUserName:(NSString *)userName{
     //NSuserDefault
    
}






//-(void) saveId:(NSString *) Identity savePw:(NSString *) PassWord {
//    NSArray *paths= NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *basePath =[paths objectAtIndex:0];
//    NSString *docuPath = [basePath stringByAppendingPathComponent:@"IdAndPassWordList.plist"];
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    if(![fileManager fileExistsAtPath:docuPath])
//    {
//        NSString *bundlepath = [[NSBundle mainBundle] pathForResource:@"Friend" ofType:@"plist"];
//        [fileManager copyItemAtPath:bundlepath toPath:docuPath error:nil];
//    }
//    NSMutableArray *dic = [NSMutableArray arrayWithContentsOfFile:docuPath];
//    NSDictionary *newFriend = @{@"name":Identity, @"password":PassWord};
//    [dic addObject:newFriend];
//    [dic writeToFile:docuPath atomically:NO];
//    
//    
//    
//    
//    
//    
//}
//
//-(NSArray *)IdAndPassWordList{
//    
//    //   NSString *path = [[NSBundle mainBundle] pathForResource:@"FriendList" ofType:@"plist"];
//    //    NSArray *friendList = [NSArray arrayWithContentsOfFile:path];
//    //    return friendList;
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *basePath = [paths objectAtIndex:0];
//    NSString *docupath =[basePath stringByAppendingPathComponent:@"IdAndPassWordList.plist"];
//    
//    NSArray *friendList =[NSArray arrayWithContentsOfFile:docupath];
//    
//    return friendList;
//}
//
@end
