//
//  ViewController.m
//  ChangePageOnlyCode20160621
//
//  Created by User on 2016. 6. 21..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height/2, 200, 40)];
    button.backgroundColor = [UIColor blackColor];
    [button addTarget:self action:@selector(buttonAction :) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}
-(void)buttonAction:(id)sender{
    SecondViewController *svc = [[SecondViewController alloc]init];
    
    [self.navigationController pushViewController:svc animated:YES];
    
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
