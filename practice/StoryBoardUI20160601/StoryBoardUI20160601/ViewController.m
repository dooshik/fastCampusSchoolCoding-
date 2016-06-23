//
//  ViewController.m
//  StoryBoardUI20160601
//
//  Created by User on 2016. 6. 1..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic) IBOutlet UILabel *label;
@property(nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    
//    [button addTarget:self action:@selector(touchButton)
//     forControlEvents:UIControlEventTouchUpInside];
//


    
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)setbutton:(UIButton *)button{
    
       
//    [button addTarget:self action:@selector(touchButton)
//     forControlEvents:UIControlEventTouchUpInside];
//    
        NSString *result = self.textField.text;
        
        self.label.text = [NSString stringWithFormat:@"결과 : %@", result];
    
//        [self.textField resignFirstResponder];
    
 
    
//    NSLog(@"%zd", button.tag);
//    
    if(button.tag == 1) {
        
        self.label.text = [NSString stringWithFormat:@"결과1 : %@", result];
        button.titleLabel.text = @"111";
    }
    else if(button.tag == 2) {
        self.label.text = [NSString stringWithFormat:@"결과2 : %@", result];
        
    }
    
//
//    
//    [self.textField resignFirstResponder];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
