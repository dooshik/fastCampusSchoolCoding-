//
//  ViewController.m
//  Test UIview
//
//  Created by User on 2016. 5. 29..
//  Copyright © 2016년 Shin. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
     [super viewDidLoad];
    
    UIView *maView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, self.view.frame.size.width-40, self.view.frame.size.height-40)];
    maView.backgroundColor = [UIColor redColor];
    [self.view addSubview:maView];
    
    UIView *maView2 = [[UIView alloc]initWithFrame:CGRectMake(40, 40, self.view.frame.size.width-80, self.view.frame.size.height -80)];
    maView2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:(UIView *)maView2];
    // [self.view addSubview:maView] , [self.view addSubview:(UIView *)maView2] 첫번째 에는 형변환 없이 가능하고 두번째는 형변환을 해주었는데 결국 차이가 뭐죠?
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end















// UIView 연습 myVeiw4 의 와이좌표값만 모르겟음.
//#import "ViewController.h"
//
//@interface ViewController ()
//
//
//@end
//
//@implementation ViewController
//viewDidLoad 란 무엇인가 아래 예제에서 super viewDidLoad가 없이도 실행 가능한 이유는?
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width/2, self.view.frame.size.height)];
//    [myView setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:myView];
//    
//    UIView *myView2 = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
//    [myView2 setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:myView2];
//    
//   UIView *myView3 =[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.width/2)];
//    myView3.backgroundColor=[UIColor blueColor];
//    [self.view addSubview:myView3];
//    
//   UIView *myView4 =[[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.width, self.view.frame.size.width/2, self.view.frame.size.width/2)];
//    myView4.backgroundColor = [UIColor redColor];
//    [self.view addSubview:myView4];
//    
//    
//   }
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//@end
