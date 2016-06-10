//
//  ViewController.m
//  MYImagePicker20160610
//
//  Created by User on 2016. 6. 10..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
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


- (IBAction)gestureRecogmizer:(id)sender {
    
//    UIGestureRecognizer *senderRecognizer = (UIGestureRecognizer *)sender;
//    
//    if ([senderRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
//        
//    } else if ([senderRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
//        
//    }
//    
    
    
    UIAlertController *alert =[UIAlertController alertControllerWithTitle:@"눌럿냐?"
                                                                  message:@"그만눌러"
                                                           preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *pictureGroup =[UIAlertAction actionWithTitle:@"그림모음"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         [self showImagePickerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
                                                     }];
    UIAlertAction *camera =[UIAlertAction actionWithTitle:@"카메라"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                          [self showImagePickerWithSourceType:UIImagePickerControllerSourceTypeCamera];
                                                     }];

     UIAlertAction *cancel =[UIAlertAction actionWithTitle:@"취소"
                                                   style:UIAlertActionStyleCancel
                                                 handler:nil];
    [alert addAction:pictureGroup];
    [alert addAction:camera];
    [alert addAction:cancel];

    [self presentViewController:alert animated:YES completion:nil];
}


-(void)showImagePickerWithSourceType:(UIImagePickerControllerSourceType)sourceType{
    
    if ([UIImagePickerController isSourceTypeAvailable:sourceType]==NO){
        NSLog(@"이 소스 못쓴디야");
        return;
    }
    
    
    UIImagePickerController *pickerController =[[UIImagePickerController alloc]init];
    [pickerController setSourceType: sourceType];
    [pickerController setDelegate:self];
    
    [pickerController setAllowsEditing:YES];
    
    [self presentViewController:pickerController animated:YES completion:nil];
}
 

#pragma mark -UIImagePicker Controller Delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *pickedOriginalImage =[info objectForKey:UIImagePickerControllerOriginalImage];
    [self.imageView setImage:pickedOriginalImage];
    
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"3");
    UIImage *editedImage =[info objectForKey:UIImagePickerControllerEditedImage];
    self.imageView.image =editedImage;
    
    self.imageView.contentMode =UIViewContentModeScaleAspectFit;
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //picker 모달을 내려준다.
    NSLog(@"2");
    [picker dismissViewControllerAnimated:YES completion:nil];
}





//- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
//    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
//        
//    } else if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
//        
//    }
//    return YES;
//}


@end
