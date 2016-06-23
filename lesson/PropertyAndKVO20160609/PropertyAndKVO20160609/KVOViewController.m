//
//  KVOViewController.m
//  PropertyAndKVO20160609
//
//  Created by User on 2016. 6. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "KVOViewController.h"
#import "ViewController.h"
@interface KVOViewController ()

@property(nonatomic,weak)IBOutlet UILabel *countLable;
@property(nonatomic) NSInteger count;
@end

@implementation KVOViewController

-(IBAction)clickButton:(id)sender{
    self.count++;
    }


- (void)viewDidLoad {
    [super viewDidLoad];
    //나자신(self)의 count프로퍼티가 바뀌는 값을 알고 싶다.
    //옵저버 add
    //감시 할 놈이 앞에 있는 self 뒤에 있는 놈이 감시 당하는 놈 
    [self addObserver:self
           forKeyPath:@"count"
             options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
              context:nil];
    
    // Do any additional setup after loading the view.
}

-(void)observeValueForKeyPath:(NSString *)keyPath
                     ofObject:(id)object
//이 딕셔너리 값에 어떤것이 전 값과 새 값인지 알려준다.
                       change:(NSDictionary<NSString *,id> *)change
                      context:(void *)context{
    NSLog(@"%@",change);
    
    NSNumber *kindValue = [change objectForKey:NSKeyValueChangeKindKey];
    NSNumber *newValue =[change objectForKey:NSKeyValueChangeNewKey];
    
    [self.countLable setText:[NSString stringWithFormat:@"%@",newValue]];
    NSLog(@"Kind : %@, New : %@",kindValue ,newValue);
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
