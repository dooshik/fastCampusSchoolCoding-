//
//  ViewController.m
//  AlertTest20160604
//
//  Created by User on 2016. 6. 4..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

-(IBAction)showAlert:(id)sender{
    
      
    
    UIAlertController *alertControler =[UIAlertController alertControllerWithTitle:@"확인요망"
                                                                            message:@"수업은 어때햇는가?"
                                                                     preferredStyle:UIAlertControllerStyleAlert];
    
    //handler라는 저 부분은 왜 필요한 것인가요?
    UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"좋았다"
                                                        style:UIAlertActionStyleDefault
                                
                                                      handler:^(UIAlertAction *_Nonnull action)
                                {[action.title isEqualToString:@"예"];
                        
                                }]; 
    
    
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"좋지않지않다."
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action)
                               {[action.title isEqualToString:@"아니요"];
                                   
                               }];
    
   UIAlertAction * whWhat = [UIAlertAction actionWithTitle:@"whWhat?"
                                                     style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction *_Nonnull action)
                             {   [action.title isEqualToString:@"아니요"];
                                                       
                             }];
    
    
    
    [alertControler addAction : whWhat];
    
    [alertControler addAction:noAction];
    
    [alertControler addAction:okAction];
    [self presentViewController:alertControler animated:YES completion:nil ];
   }

@end
