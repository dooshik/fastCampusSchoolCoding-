//
//  ViewController.m
//  UIViewTest
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"
@interface ViewController ()
@property (nonatomic) IBOutlet UITextField * idTextField;
@property (nonatomic) IBOutlet UITextField * pwTextField;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)ischeckLoginWithID:(NSString *)userID userPW:(NSString *)userPW{
    if (userID.length >0 && userPW.length >0) {
        if([[DataCenter shareIdInstance] isCheckLoginWithID:userID withPW:userPW]){
            return YES;
        }else{
            //Alert 띄우기 - 계정 정보가 잘  됐습니다.
         UIAlertController * error = [UIAlertController alertControllerWithTitle:@"확인"
                                                                        message:@"로그인불가"
                                                                 preferredStyle:UIAlertControllerStyleAlert ];
            UIAlertAction * okButton = [UIAlertAction actionWithTitle:@"OK"
                                                                style:UIAlertActionStyleDefault
                                                              handler:nil];
            [error addAction: okButton];
            [self presentViewController:error animated:YES completion:nil ];
            
        }
        
    }else{
        
        //Alert 만들기
        UIAlertController * error = [UIAlertController alertControllerWithTitle:@"확인"
                                                                        message:@"필드가 비어있음"
                                                                 preferredStyle:UIAlertControllerStyleAlert ];
        UIAlertAction * okButton = [UIAlertAction actionWithTitle:@"OK"
                                                            style:UIAlertActionStyleDefault
                                                          handler:nil];
        [error addAction: okButton];
        [self presentViewController:error animated:YES completion:nil ];

        
        return NO;
    }
    
    return YES;
}


//[[DataCenter shareIdInstance] setAutoLogin:YES];
-(IBAction)nextBtn:(id)sender{

    
    if ([self ischeckLoginWithID:self.idTextField.text userPW:self.pwTextField.text]) {
        NSLog(@"passed");
        UIStoryboard *storyB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        ViewController *vc = [storyB instantiateViewControllerWithIdentifier:@"MainView"];
        
        //2.push
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    else
    {
      
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
