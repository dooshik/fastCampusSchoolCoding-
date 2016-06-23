//
//  ViewController.m
//  PropertyAndKVO20160609
//
//  Created by User on 2016. 6. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
//객체에서 일어나는 일의 체크는 set을 통해서 하는 것이 일반적으로 좋고 외부객체의 일을 체크하는데는 KVO를 사용하는 것이 좋다. KVO는 한번에 여러개의 값을 체크할 수 있으서 더 편한 점도 있다.
@interface ViewController ()
@property(nonatomic,weak)IBOutlet UILabel *countLable;
@end

@implementation ViewController


-(IBAction)clickButton:(id)sender{
    self.count++;
    NSLog(@"Set count:%ld",  self.count);
    [self.countLable setText:[NSString stringWithFormat:@"%ld", self.count]];
  
}



-(void)setCount:(NSInteger)count{
    
   _count =count;
    NSLog(@"Set count:%ld",  count);
    
     [self.countLable setText:[NSString stringWithFormat:@"%ld", count]];
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
