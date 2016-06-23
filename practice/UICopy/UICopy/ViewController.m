//
//  ViewController.m
//  UICopy
//
//  Created by User on 2016. 5. 27..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
<UITextFieldDelegate>
@property (nonatomic,weak) IBOutlet UITextField *textField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate =self;
    [UIView animateWithDuration:5 delay:5 options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                         [self.textField setFrame:CGRectMake(100, 100, 100, 30)];
                     }completion:^(BOOL finished){
                         [self.textField setFrame:CGRectMake(40, 40, 100, 30)];
                     }];
    }





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
