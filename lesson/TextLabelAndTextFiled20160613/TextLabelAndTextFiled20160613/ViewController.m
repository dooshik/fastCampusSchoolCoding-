//
//  ViewController.m
//  TextLabelAndTextFiled20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<UITextFieldDelegate , UIGestureRecognizerDelegate,UINavigationControllerDelegate>

//@property (weak, nonatomic)  UITextField *textFiled;
//@property (weak, nonatomic)  UILabel *label;
//@property (weak,nonatomic) UIResponder *responder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
//    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(80, 0, 70, 30)];
//    [label setText:@"label"];
//    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(40, 100, 30, 30)];
//    [button setTitle:@"button" forState:UIControlStateNormal];
//     UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake( 40, 0, 80, 30)];
//    
//     self.label=label;
//    self.textFiled =textField;
//    
//    [self.view addSubview:label];
//    [self.view addSubview:button];
//    [self.view addSubview:textField];
    
   
    
    self.textFiled.delegate =self;
    
}
- (IBAction)button:(id)sender {
    self.label.text = self.textFiled.text;
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.label.text = self.textFiled.text;
    NSLog(@"d");
    [self.textFiled endEditing:YES];
    
    return YES;
}
- (IBAction)recognizer:(id)sender {
    [self.textFiled endEditing:YES ];
    NSLog(@"CC");
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    NSLog(@"ss");
    [self.textFiled endEditing:YES];
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goNextpage:(id)sender {
   
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if (segue) {
        SecondViewController *sv = [segue destinationViewController];
        sv.firstViewString = self.textFiled.text;
        NSLog(@"2");
    }
}

@end
