//
//  ViewController.m
//  TestUILable
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

    UIView *myView1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height/2)];
    myView1.backgroundColor = [UIColor grayColor];
    //점을 찍는 것이 []와  set을 입력하는 것 과 다른 것은 @property의 역할로 get과 set을 일일이 써줄 필요가 없다고 들엇는데  나는 어떤 프로퍼티도 쓰지 않았는데 .을 사용할 수 있는 이유는 무엇인가요?
    [self.view addSubview:myView1];
    
    
    UIView *myView2 =[[UIView alloc]init];
    myView2.frame = CGRectMake(10, myView1.frame.size.height/2, 300   , 100);
    myView2.backgroundColor = [UIColor blackColor];
    [myView1 addSubview:myView2];

    UILabel *label1=[[UILabel alloc]initWithFrame:CGRectMake(10, 10, self.view.frame.size.width, 30)];
    label1.text = @"나는 노랑입니다.";
    label1.textAlignment = NSTextAlignmentLeft;
    label1.textColor =[UIColor yellowColor];
    [myView1 addSubview: label1];
    
    UILabel *label2 =[[UILabel alloc]initWithFrame:CGRectMake(0,  label1.frame.size.height,self.view.frame.size.width , label1.frame.size.height)];
    label2.textColor = [UIColor redColor];
    label2.text=@"나는 빨강입니다.";
    label2.textAlignment = NSTextAlignmentRight;
    [myView1 addSubview:label2];

    UILabel *label3 =[[UILabel alloc]initWithFrame:CGRectMake(0,myView2.frame.size.height-30 , myView2.frame.size.width, 30)];
    label3.textColor = [UIColor whiteColor];
    label3.text = @"나는 하얀입니다.";
    label3.textAlignment = NSTextAlignmentRight;
    [myView2 addSubview:label3];
    
    UILabel *label4 =[[UILabel alloc]initWithFrame:CGRectMake(0, myView1.frame.size.height/2+110, self.view.frame.size.width, label1.frame.size.height)];
    label4.textColor =[UIColor purpleColor];
    label4.textAlignment = NSTextAlignmentCenter;
    label4.text =@"나는 보라입니다.";
    [myView1 addSubview: label4 ];
    
    UILabel *label5 = [[UILabel alloc]initWithFrame:CGRectMake(0, myView1.frame.size.height-50, self.view.frame.size.width, label1.frame.size.height)];
    label5.textColor = [UIColor whiteColor];
    label5.text=@"흰색이 또 있어?";
    label5.textAlignment =NSTextAlignmentCenter;
    [myView1 addSubview:label5];
    //폰트크기에 대해서 알아보기!!
    
    
    

    

    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
