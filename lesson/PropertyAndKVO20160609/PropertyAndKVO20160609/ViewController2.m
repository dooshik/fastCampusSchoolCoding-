//
//  ViewController2.m
//  PropertyAndKVO20160609
//
//  Created by User on 2016. 6. 11..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController.h"
@interface ViewController2 ()
@property (nonatomic) ViewController *vc;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
  
}

-(void)setCount:(NSInteger)count{
    [self.vc setCount:count];
 
    NSLog(@"Set count:%ld",  count);

  
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
