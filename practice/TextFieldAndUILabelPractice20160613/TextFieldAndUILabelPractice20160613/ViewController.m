//
//  ViewController.m
//  TextFieldAndUILabelPractice20160613
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.delegate =self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    self.label.text = self.textField.text;
  
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    self.label.text =self.textField.text;
    [self.textField endEditing:YES];
        return YES;
}

- (IBAction)recognizer:(id)sender {
     [self.textField endEditing:YES];
    NSLog(@"dd");
}

@end
