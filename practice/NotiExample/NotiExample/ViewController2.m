//
//  ViewController2.m
//  NotiExample
//
//  Created by User on 2016. 6. 16..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(upKeyBoard:) name:UIKeyboardWillShowNotification object:nil];
    NSLog(@"44");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
     [[NSNotificationCenter defaultCenter]postNotificationName:@"NotificationKey" object:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)upKeyBoard:(NSNotification *)noti{
    NSLog(@"3");
}
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    NSLog(@"s");
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
