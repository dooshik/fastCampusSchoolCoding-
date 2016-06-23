//
//  SignUpView.m
//  UIViewTest
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SignUpView.h"
#import "ViewController.h"
#import "DataCenter.h"
#import "MainView.h"
@interface SignUpView ()
@property (nonatomic) IBOutlet UITextField * idTextField;
@property (nonatomic) IBOutlet UITextField * pwTextField;
@property (nonatomic) IBOutlet UITextField * rePwTextField;
@property (nonatomic) IBOutlet UITextField * phoneNumber;
@end

@implementation SignUpView

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        
    }else
    {
        NSLog(@"user is registered");
        
    
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//빈 곳이 있는지 확인
-(BOOL)signupWithID:(NSString *)userID userPW:(NSString *)userPW reEnter:(NSString *)useRePw{
   
    if (userID.length>0 && userPW.length>0 && useRePw.length>0) {
//        if ([user]) {
//            <#statements#>
//        }
    }
    return YES;
}


//-(IBAction)nextBtn:(id)sender{
//
//    
//    if ([self ischeckLoginWithID:self.idTextField.text userPW:self.pwTextField.text]) {
//        
//        UIStoryboard *storyB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        ViewController *vc = [storyB instantiateViewControllerWithIdentifier:@"MainView"];
//        
//        //2.push
//        [self.navigationController pushViewController:vc animated:YES];
//
//    }else{
//        
//    }
//    
//    
//}

//return [self ischeckloginwithid:self.idtext]




-(IBAction)signUpButton:(id)sender{

    
    if([_idTextField.text isEqualToString:@""] || [_pwTextField.text isEqualToString:@""]||
       [_rePwTextField.text isEqualToString:@""]|| [_phoneNumber.text isEqualToString:@""]){
        
        UIAlertController *error =[UIAlertController alertControllerWithTitle:@"오류"
                                                                      message:@"입력란에 입력을 빈칸이 있습니다."
                                                               preferredStyle:UIAlertControllerStyleAlert];
        
        
        
        UIAlertAction * okButton = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * _Nonnull action)
                                    {
                                        [action.title isEqualToString:@"예"];
                                    }];
        
        [error addAction: okButton];
        [self presentViewController:error animated:YES completion:nil ];
    }else
        if([_pwTextField.text isEqualToString:_rePwTextField.text] ) {
            NSLog(@"패스워드 일치");
            if ([signupWithID:self.idTextField.text userPW:self.pwTextField.text]) {
                UIStoryboard *storyB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
                MainView *vc = [storyB instantiateViewControllerWithIdentifier:@"MainView"];
                
                //2.push
                [self.navigationController pushViewController:vc animated:YES];
            }else
            {
                //회원가입 실패
                NSLog(@"fail");
                
            }
            
        }else{
            UIAlertController *pwNotMactch =[UIAlertController alertControllerWithTitle:@"비밀번호 불일치"
                                                                                message:@"비밀번호가 같은지 확인하세요"
                                                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *okButton =[UIAlertAction actionWithTitle:@"OK"
                                                              style:UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction * _Nonnull action) {
                                                                [action.title isEqualToString:@"예"];
                                                            }];
            [pwNotMactch addAction: okButton];
            [self presentViewController:pwNotMactch animated:YES completion:nil];
        }
    
    }



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
