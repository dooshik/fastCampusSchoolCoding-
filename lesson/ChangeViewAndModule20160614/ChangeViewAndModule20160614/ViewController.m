//
//  ViewController.m
//  ChangeViewAndModule20160614
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "SeconViewController.h"
@interface ViewController ()<UITextViewDelegate>


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textView.delegate = self;
    
   }

- (void)textViewDidChange:(UITextView *)textView;{
    self.label.text = self.textView.text;
    [[NSUserDefaults standardUserDefaults]setObject:self.textView.text forKey:@"textView"];
    [[NSUserDefaults standardUserDefaults]synchronize];

    
}

- (IBAction)moduleButton:(id)sender {
    SeconViewController *SVC =[self.storyboard instantiateViewControllerWithIdentifier:@"SeconViewController"];
    [self presentViewController:SVC animated:YES completion:nil];
}
//-(void)viewWillAppear:(BOOL)animated{
////        [[NSUserDefaults standardUserDefaults]setObject:self.textView.text forKey:@"textView"];
////        [[NSUserDefaults standardUserDefaults]synchronize];
//}
- (IBAction)recognizer:(id)sender {
    [self.textView endEditing:YES];
}

@end
