//
//  ViewController.m
//  NSThread20160615
//
//  Created by User on 2016. 6. 16..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic)NSThread *thread;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.label performSelectorOnMainThread:@selector(setText:) withObject:@"hello" waitUntilDone:YES];

    self.thread = [[NSThread alloc]initWithTarget:self selector:@selector(testthread:) object:nil];
    [self.thread start];
}
-(void)testthread:(NSThread *)thread{
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button:(id)sender {
       for (int i=0; i<100000; i++) {
        [NSThread sleepForTimeInterval:0.7f];
        NSLog(@"%ld",(long)i);
        
        
    }

    
}

@end
