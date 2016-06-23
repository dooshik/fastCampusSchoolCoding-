//
//  SecondViewController.m
//  TableControllerExample20160614
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondViewController.h"
//#import "ViewController.h"
@interface SecondViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;

@end

@implementation SecondViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    }


- (void)viewWillAppear:(BOOL)animated{
//  
//        ViewController *vc = self.navigationController.viewControllers.firstObject;
//        self.secondLabel.text = vc.label.text;
 
//    ViewController *vc = self.tabBarController.viewControllers.firstObject;
//    self.secondLabel.text = vc.label.text;
    
    self.secondLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"labelKey"];
    
    
  
}
- (IBAction)secondButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
//- (void)viewwillAppear:(BOOL)animated{
//        ViewController *vc = self.tabBarController.viewControllers.firstObject;
//        self.secondLabel.text = vc.label.text;
////    ViewController *vc = self.navigationController.viewControllers.firstObject;
////    self.secondLabel.text = vc.label.text;
//    
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
