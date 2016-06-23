//
//  ViewController.m
//  TestUIControl
//
//  Created by User on 2016. 5. 30..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak) UIButton* button;
@property(nonatomic,weak) UILabel* label1;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button1 =[UIButton buttonWithType:UIButtonTypeCustom];
    //위에 함수의 의미는?
    button1.frame = CGRectMake(self.view.frame.size.width/2-40, self.view.frame.size.height/2-40, 50, 30);
    [button1 setTitle:@"1번" forState:UIControlStateNormal];
    button1.tag = 1;
    [button1 addTarget:self
                action:@selector(onTouchUpInsideButton:)
      forControlEvents:UIControlEventTouchUpInside];
   
//    [button1 addTarget:self
//                action:@selector(onTouchUpInsideButton1:)
//      forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [button1 setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:button1];
    // selected를 설정하면 누르고 난뒤에 효과가 나와야하는데 안나오는 이유는? // 아마도 아래 설정때문인 것 같습니다.
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake( self.view.frame.size.width/2-40, self.view.frame.size.height/2-70, button1.frame.size.width, button1.frame.size.height)];
    button2.backgroundColor = [UIColor darkGrayColor];
    button2.tag = 2;
    [button2 setTitle:@"2번" forState:UIControlStateNormal];
    [button2 addTarget:self
                action:@selector(onTouchUpInsideButton:)
      forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
    [self.view addSubview:button2];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, 30)];
    label.backgroundColor = [UIColor blueColor];
    [self.view addSubview:label];
    label.textAlignment = NSTextAlignmentCenter;
    self.label1 = label;
    // 마지막에 쓴 식은 왜 쓰는 건가요?
}



//-(void)onTouchUpInsideButton:(UIButton *) sender {
// NSInteger tag = sender .tag;
//    self.label.text = [NSString stringWithFormat:@"호출번호는 %ld번입니다.",(long)tag];
//    // 아래의 이프문을 이해하지 못하겠음.
//    if(sender .selected){
//        sender.selected = NO;
//        
//        
//    }else{
//        sender.selected = YES;
//        self.button.selected = NO;
//    }

//    NSInteger selectedButton = sender.tag;
//    switch (tag) {
//        case 1:
//            NSLog(@"%ld번 입니다.", (long)tag);
//          
//            break;
//            
//        default:
//            break;
//    }
//   _button =sender;
//}

-(void)onTouchUpInsideButton: (UIButton *)sender {
    self.label1.text = [NSString stringWithFormat:@"%ld번 입니다", (long)sender.tag];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
