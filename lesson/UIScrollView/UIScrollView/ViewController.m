//
//  ViewController.m
//  UIScrollView
//
//  Created by User on 2016. 5. 27..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    [scrollView setContentSize:CGSizeMake(scrollView.frame.size.width*3, scrollView.frame.size.height)];
    [self.view addSubview:scrollView];
    scrollView.pagingEnabled=YES;
   
    UIView *sc = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    [sc setBackgroundColor:[UIColor redColor]];
    [scrollView  addSubview:sc];
    UIView *sc1 = [[UIView alloc]initWithFrame:CGRectMake(320, 0, 320, 460)];
     [sc1 setBackgroundColor:[UIColor blueColor]];
    [scrollView  addSubview:sc1];
    UIView *sc2 = [[UIView alloc]initWithFrame:CGRectMake(640, 0, 320, 460)];
     [sc2 setBackgroundColor:[UIColor blackColor]];
    [scrollView  addSubview:sc2];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
