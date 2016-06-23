//
//  ViewController.m
//  TableControllerExample20160614
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<UITextViewDelegate ,UIGestureRecognizerDelegate >
//@property (nonatomic )UITextView *tv;

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated {
    
    self.textView.text = @"";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textView.delegate=self;
    
    self.textView.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"labelKey"];
    
   }
- (IBAction)goNextViewButton:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textViewDidChange:(UITextView *)textView;{
  
    self.label.text =self.textView.text;
    
    [[NSUserDefaults standardUserDefaults] setObject:self.textView.text forKey:@"labelKey"];
    [[NSUserDefaults standardUserDefaults] synchronize];

}
- (IBAction)whiteRecognizer:(id)sender {
    
}

- (IBAction)blackRecognizer:(id)sender {
    [self.textView endEditing:YES];
}
- (IBAction)nextViewButton:(id)sender {
    
    SecondViewController *sv =[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self presentViewController:sv animated:YES completion:nil];

    
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
