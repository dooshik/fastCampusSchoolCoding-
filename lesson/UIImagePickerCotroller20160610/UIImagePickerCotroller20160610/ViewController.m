//
//  ViewController.m
//  UIImagePickerCotroller20160610
//
//  Created by User on 2016. 6. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickAlertAction:(id)sender {
    
    UIAlertController * alert =[UIAlertController alertControllerWithTitle:@"확인요망"
                                                                   message:@"이런 요망한년"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
       
    }];
    //handler에 넣는 변수에 따라 뒤로,앞으로 도 갈 수 있다.
     UIAlertAction *identify =[UIAlertAction actionWithTitle:@"말이 심하다"
                             style:UIAlertActionStyleDefault
                           handler:nil];
    UIAlertAction *identify2 =[UIAlertAction actionWithTitle:@"그래 나 요망하다."
                                                      style:UIAlertActionStyleDestructive
                                                    handler:nil];
    UIAlertAction *identify3 =[UIAlertAction actionWithTitle:@"꺼져"
                                                       style:UIAlertActionStyleDestructive
                                                     handler:nil];
   

    [alert addAction:identify];
    [alert addAction:identify2];
    [alert addAction:identify3];

        [self presentViewController:alert animated:YES completion:nil];
    
}
- (IBAction)clickActionsheet:(id)sender {
    UIAlertController * alert =[UIAlertController alertControllerWithTitle:@"확인요망"
                                                                   message:@"이런 요망한년"
                                                            preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *identify=[UIAlertAction actionWithTitle:@"말이 심하다."
                             style:UIAlertActionStyleDefault
                           handler:nil];
    UIAlertAction *identify2=[UIAlertAction actionWithTitle:@"그래 나 요망하다."
                             style:UIAlertActionStyleDefault
                           handler:nil];
    UIAlertAction *identify3 =[UIAlertAction actionWithTitle:@"꺼져"
                                                       style:UIAlertActionStyleDefault
                                                     handler:nil];

    [alert addAction:identify];
    [alert addAction:identify2];
    [alert addAction:identify3];
    [self presentViewController:alert animated:YES completion:nil];

}

@end
