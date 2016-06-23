//
//  ThirdViewController.m
//  TextLabelAndTextFiled20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "ViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

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
- (IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
   // NSArray * index = self.navigationController.viewControllers;
    
    
}
- (IBAction)goFirstButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
