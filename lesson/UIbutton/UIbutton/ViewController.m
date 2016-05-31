//
//  ViewController.m
//  UIbutton
//
//  Created by User on 2016. 5. 26..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
    @property (nonatomic , weak) UILabel *lab;
    @property (nonatomic , weak) UIButton *button;
@property(nonatomic,weak) UITextField *testTF;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *testTF = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    testTF.font =[UIFont systemFontOfSize:15];
    testTF.textColor= [UIColor whiteColor];
    testTF.textAlignment=NSTextAlignmentCenter;
    testTF.borderStyle =UITextBorderStyleLine;
    testTF.placeholder =@"inputText";
    testTF.delegate= self;
    [self.view addSubview:testTF];
    self.testTF = testTF;
    
    UIButton *btn = [ UIButton buttonWithType:UIButtonTypeCustom];
    // x,y,w,h
    [btn setFrame:CGRectMake(100, 150, 100, 35)];
    btn.tag = 1;
    [btn addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"1번" forState :UIControlStateNormal];
    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
    [btn setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    UILabel *lb =[[ UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 35)];
    lb.font = [UIFont systemFontOfSize:15];
    lb.textColor = [UIColor whiteColor];
    lb.textAlignment = NSTextAlignmentCenter;
    

}
-(void )onTouchUpInsideBtn:(UIButton *)sender{
    
}

-(BOOL)textFieldSouldBeginEditing:(UITextField *)textField
{
    NSLog(@"call textFieldSouldBeginEditing");
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"call textFieldDidBeginEditing");
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.testTF resignFirstResponder];
    NSLog(@"call textFieldSouldReturn");
    return YES;
}
//   UIButton *btn = [ UIButton buttonWithType:UIButtonTypeCustom];
//    // x,y,w,h
//    [btn setFrame:CGRectMake(30, 150, 100, 35)];
//    btn.tag = 1;
//    [btn addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"1번" forState :UIControlStateNormal];
//    [btn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
//    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//    [btn setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
//    [self.view addSubview:btn];
//
//    UIButton *btn1 = [ UIButton buttonWithType:UIButtonTypeCustom];
//
//
//    [btn1 setFrame:CGRectMake(140, 150, 100, 35)];
//    btn1.tag = 2;
//    [btn1 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn1 setTitle:@"2번" forState :UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
//    [btn1 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//     [btn1 setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
//    [self.view addSubview:btn1];
//
//    
//    
//    UIButton *btn3 = [ UIButton buttonWithType:UIButtonTypeCustom];
//    
//    [btn3 setFrame:CGRectMake(30, 170, 100, 35)];
//    btn3.tag = 3;
//    [btn3 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn3 setTitle:@"3번" forState :UIControlStateNormal];
//    [btn3 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn3 setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
//    [btn3 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//     [btn3 setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
//    [self.view addSubview:btn3];
//    
//    UIButton *btn4 = [ UIButton buttonWithType:UIButtonTypeCustom];
//    
//    [btn4 setFrame:CGRectMake(140, 170, 100, 35)];
//    btn4.tag = 4;
//    [btn4 addTarget:self action:@selector(onTouchUpInsideBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [btn4 setTitle:@"4번" forState :UIControlStateNormal];
//    [btn4 setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
//    [btn4 setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
//    [btn4 setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
//     [btn4 setBackgroundImage:[UIImage imageNamed:@"a.png"] forState:UIControlStateNormal];
//    [self.view addSubview:btn4];
//    
//    UILabel *lab = [[ UILabel alloc]initWithFrame: CGRectMake(30, 200, 500, 35)];
//    lab.textColor = [UIColor blueColor];
//    [self.view addSubview:lab];
//    self.lab= lab;
//    
//
//    // Do any additional setup after loading the view, typically from a nib.
//}
//-(void) onTouchUpInsideBtn :(UIButton *)sender
//
//{
//    NSInteger tag =sender.tag;
//    
//    self.lab.text = [NSString stringWithFormat:@"선택된 버튼은:%ld번 버튼입니다.",(long)tag] ;
//    
//    if (sender.selected) {
//        sender.selected =NO;
//            }else {
//        sender.selected =YES;
//                self.button.selected =NO;
//    }
//    
//    
//    NSInteger selectedBtnNum =sender .tag;
//    switch (selectedBtnNum) {
//        case 1:
//            NSLog(@"선택된 버튼은:%ld번 버튼",(long)sender.tag);
//            break;
//        case 2:
//            NSLog(@"선택된 버튼은:%ld번 버튼",(long)sender.tag);
//            break;
//        case 3:
//            NSLog(@"선택된 버튼은:%ld번 버튼",(long)sender.tag);
//            break;
//        case 4:
//            NSLog(@"선택된 버튼은:%ld번 버튼",(long)sender.tag);
//            break;
//
//
//        default:
//            break;
//            
//    }
//    _button = sender ;
////    NSLog(@"%ld번 버튼이 눌렸습니다.",(long)sender,tag );
//}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
