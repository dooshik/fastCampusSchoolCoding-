//
//  ViewController.m
//  UIController
//
//  Created by User on 2016. 5. 31..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "ThirdViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)nextBtn1:(id)sender{
    ThirdViewController *thiedVC =[[ThirdViewController alloc]init];
    [self.navigationController pushViewController:thiedVC animated:YES];
    
}




@end
