//
//  secondViewController.m
//  homeWorkOnlyCode20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake( 100 , 100, 100, 30)];
    [self.view addSubview:button];
    [button setBackgroundColor:[UIColor blackColor]];
    [button setTitle:@"button" forState:UIControlStateNormal];

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

@end
