//
//  ViewController.m
//  DelegateTest
//
//  Created by User on 2016. 6. 3..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic,weak)IBOutlet UITextField *textField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate = self;
    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"어 시작할려고?");
}
-(bool)textFieldShouldBeginEditing:(UITextField *)textField{
   
    if (textField.text.length ==0) {
        NSLog(@"어 시작 해야지 그럼");
        return YES;
    }else{
        return NO;
    }
}
-(bool)textFieldShouldReturn:(UITextField *)textField{
    if(textField.text.length >0){
        [textField endEditing:YES];
        NSLog(@"쓰고나면 내려가");
        return YES;
        
    }else{
        return NO;
    }
}
//이부분이 인지되는 것은 키보드가 내려가는 타이밍과 상관이 있나요?
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"난 여기까지인가봐");
}


@end
