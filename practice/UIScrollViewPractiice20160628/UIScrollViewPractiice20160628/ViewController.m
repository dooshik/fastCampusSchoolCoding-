//
//  ViewController.m
//  UIScrollViewPractiice20160628
//
//  Created by User on 2016. 6. 28..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//@property(nonatomic,weak)UIScrollView *scrollView1;
//@property(nonatomic,weak)UIScrollView *scrollView2;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *widthScrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 -50, self.view.frame.size.height/2-50, 100 , 100)];
    [widthScrollview setBackgroundColor:[UIColor blackColor]];
    [widthScrollview setContentSize:CGSizeMake(300, 100)];
    UIView *widthView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
    widthView1.backgroundColor = [UIColor blueColor];
    [widthScrollview addSubview:widthView1];
    UIView *widthView2 = [[UIView alloc]initWithFrame:CGRectMake(100, 0, self.view.frame.size.width, 100)];
    widthView2.backgroundColor = [UIColor yellowColor];
    [widthScrollview addSubview:widthView2];
    UIView *widthView3 = [[UIView alloc]initWithFrame:CGRectMake(200, 0, self.view.frame.size.width, 100)];
    widthView3.backgroundColor = [UIColor redColor];
    [widthScrollview addSubview:widthView3];
    [self.view addSubview:widthScrollview];
   
    
    UIScrollView *heightScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(200, 200, 300, 100)];
    [heightScrollView setContentSize:CGSizeMake(300, self.view.frame.size.height *3)];
    UIView *heightView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 300, self.view.frame.size.height)];
    heightView1.backgroundColor = [UIColor yellowColor];
    [heightScrollView addSubview:heightView1];
    UIView *heightView2 = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height, 300,self.view.frame.size.height )];
    heightView2.backgroundColor = [UIColor redColor];
    [heightScrollView addSubview:heightView2];
    UIView *heightView3 = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height*2, 300,self.view.frame.size.height )];
    heightView3.backgroundColor = [UIColor orangeColor];
    [heightScrollView addSubview:heightView3];
    [self.view addSubview:heightScrollView];
    
}
@end
