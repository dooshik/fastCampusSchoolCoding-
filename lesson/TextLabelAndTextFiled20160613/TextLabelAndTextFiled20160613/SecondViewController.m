//
//  SecondViewController.m
//  TextLabelAndTextFiled20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondViewController.h"
//#import "ViewController.h"
@interface SecondViewController ()



@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    ViewController *firstViewController = self.navigationController.viewControllers.firstObject;
//    NSArray *index = self.navigationController.viewControllers;
//    self.uilabel.text = firstViewController.label.text;
    self.uilabel.text = self.firstViewString;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goNextViewButton:(id)sender {
    
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
