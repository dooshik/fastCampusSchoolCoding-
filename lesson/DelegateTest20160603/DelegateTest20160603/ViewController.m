//
//  ViewController.m
//  DelegateTest20160603
//
//  Created by User on 2016. 6. 3..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSDictionary *constDictionary = @{@"name":@"dooshik",
                                    @"speciality": @"iOS",
                                      @"handsome": @YES};
    //constDictionary[@"name"] =@"name";
    //NSDictionary는 수정불가능
//    NSMutableDictionary *mutavleDictionary =@{};
//    mutableDictionary[@"name"] =@"dooshik";
//    [mutableDictionary setObject:@"dooshik" forKey:@"name"];
//    
    NSNumber *integerNumber = [NSNumber numberWithInteger:100];// =@100
    
    NSData *jasonData =[NSJSONSerialization dataWithJSONObject:constDictionary
                                    options:NSJSONWritingPrettyPrinted
                                      error:nil];
    NSString *jsonString = [[NSString alloc]initWithData:jasonData
                                                encoding:NSUTF8StringEncoding];
    NSLog(@"%@",jsonString);
    
    
}

//delegate 처럼 만들어서 사용하는 블럭 방법
-(IBAction)showAlert:(id)sender{
    
    
    //이부분이 딜리게이트 처럼 만든 부분이다. block이라는 이름을 가진 트로토콜을 만든 듯한 느낌으로 만든 것이다
    //사람마다 다르지만 이렇게 쓸 문구를 묶어서 정리해서쓰기도 하고 block자리에 if block문 안에 있는 문구를 사용해서 코드를 짜기도 한다.
    id block = ^(UIAlertAction *_Nonnull action){
        if([action.title isEqualToString:@"예"]){
            NSLog(@ "예 잘햇어요");
        }else{
            NSLog(@"아니지 않네요 잘햇어요.");
        }
    };
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"예"
                                                                             message:@"iOS 스물 재미잇죠?"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"예"
                                                       style:UIAlertActionStyleDefault
                                                     handler:block];
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"아니요"
                                                       style:UIAlertActionStyleDefault
                                                     handler:block];

    [alertController addAction: okAction];
    [alertController addAction: noAction];
    [self presentViewController:alertController animated:YES completion:nil];
}



//delegate를 이용한 방법

//-(IBAction)showAlert:(id)sender{
//    UIAlertView *alertView =[[UIAlertView alloc]initWithTitle:@"여러분" message:@"iOS스쿨 재미있죠?"
//delegate:self cancelButtonTitle:@"아니지 않아요" otherButtonTitles:@"예", nil];
//    
//    [self.view addSubview:alertView];
//}
//
//#pragma -UIAlertView Delegate Methods
//
//-(void)alertView :(UIAlertView *)alertView clcikedButtonAyIndex:(NSInteger)buttonIndex{
//    
//}


@end
//delegate에 대한 예
//#import "ViewController.h"
//
//@interface ViewController ()<UITextFieldDelegate>
//@property (nonatomic, weak) IBOutlet UITextField *myTextField;
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    self.myTextField.delegate =self;
//    
//}
//
//
//
//#pragma mark -UITextFileDelegate Methods
//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    NSLog(@"사용자가 작업을 시작했다는구만~?");
//    
//}
//
//-(BOOL)textFieldShouldReturn:(UITextField *)textField
//{
//    NSLog(@"야나 %@이런거 받았어",textField );
//    
//    NSLog(@"입력값 있으면 꺼지라고해");
//    if(textField.text.length>0){
//        [textField endEditing:YES];
//        return YES;
//    }else{
//        return NO;
//    }
//}
//
//
//@end
//
