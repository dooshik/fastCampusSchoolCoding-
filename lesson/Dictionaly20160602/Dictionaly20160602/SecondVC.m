//
//  SecondVC.m
//  Dictionaly20160602
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondVC.h"
#import "DataCenter.h"
@interface SecondVC ()
@property(nonatomic, weak) IBOutlet UITextField *age;

@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(IBAction)button1:(id)sender{
    [[DataCenter sharedInstance]setAge:self.age.text.integerValue];
    [[DataCenter sharedInstance]printData];
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
