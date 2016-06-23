//
//  firstViewController.m
//  homeWorkOnlyCode20160613
//
//  Created by User on 2016. 6. 13..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "firstViewController.h"
#import "secondViewController.h"
@interface firstViewController ()

@end

@implementation firstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width-100 , self.view.frame.size.height-20
    , 100, 20)];
    
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:@"button" forState:UIControlStateNormal];
   
    [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

-(void)clickButton :(id)sender {
    secondViewController *sv = [[secondViewController alloc]init];
// 
//[self presentViewController: sv
//                   animated:NO
//                 completion:nil];
    [self.navigationController pushViewController:sv animated:YES];
    
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
