//
//  SeconViewController.m
//  ChangeViewAndModule20160614
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SeconViewController.h"
//#import "ViewController.h"

@interface SeconViewController ()
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

@end

@implementation SeconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
- (void)viewWillAppear:(BOOL)animated{
//    ViewController *VC = self.navigationController.viewControllers.firstObject ;
//    self.secondLabel.text = VC.textView.text;
    self.secondLabel.text =[[NSUserDefaults standardUserDefaults]objectForKey:@"textView"];
   
}
- (IBAction)goHomeButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}




@end
