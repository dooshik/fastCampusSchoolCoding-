//
//  ViewController.m
//  NotiExample
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
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(trackingPost:)
                                                 name:@"NotificationKey"
                                               object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
}

-(void)trackingPost:(NSNotification *)noti{
    NSString *notiText = noti.object;
    [self.label setText:notiText];
    
    
}
@end
