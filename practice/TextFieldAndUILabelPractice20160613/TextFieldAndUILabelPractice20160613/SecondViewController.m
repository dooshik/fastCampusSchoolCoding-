//
//  SecondViewController.m
//  TextFieldAndUILabelPractice20160613
//
//  Created by User on 2016. 6. 14..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //단계 4 다시 해봐야함
    ViewController *vc = self.navigationController.viewControllers.firstObject;
//    NSArray *index = self.navigationController.viewControllers;
    self.label.text = vc.label.text;
    
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
