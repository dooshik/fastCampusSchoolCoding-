//
//  SecondViewController.m
//  NotificationPractice20160615
//
//  Created by User on 2016. 6. 16..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

- (IBAction)button:(id)sender {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"sendTextNoti" object:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
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
