//
//  ViewController.m
//  imagePickerTest
//
//  Created by User on 2016. 6. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

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
- (IBAction)recognizer:(id)sender {
    
    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"소리나 좋아해요?"
                                                                  message:@"자 사실을 말해줘요 "
                                                           preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * ok= [UIAlertAction actionWithTitle:@"그럼요"
                                                 style:UIAlertActionStyleDefault
                                               handler:^(UIAlertAction * _Nonnull action) {
                                                   [self pickerController:UIImagePickerControllerSourceTypePhotoLibrary];
                                               }];
    UIAlertAction * ok2= [UIAlertAction actionWithTitle:@"아니요 사랑하지 않지 않아요"
                                                 style:UIAlertActionStyleDestructive
                                               handler:^(UIAlertAction * _Nonnull action) {
                                                   [self pickerController:UIImagePickerControllerSourceTypeCamera];
                                               }];
    [alert addAction:ok];
    [alert addAction:ok2];
    
    [self presentViewController:alert animated:YES completion:nil];
}

-(void)pickerController:(UIImagePickerControllerSourceType)sourceType{
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    
    [picker setDelegate:self];
    [picker setAllowsEditing:YES];
    [self presentViewController:picker animated:YES completion:nil];
    
    
}
#pragma pickrtControllerDelegate
@end
