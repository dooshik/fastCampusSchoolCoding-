//
//  ViewController.m
//  NotificationPractice20160615
//
//  Created by User on 2016. 6. 16..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(trackingPost:) name:@"sendTextNoti" object:nil];
    
}

-(void)trackingPost:(NSNotification *) noti{
    NSString * notiticationText = noti.object;
    self.label.text =notiticationText;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
}

@end
