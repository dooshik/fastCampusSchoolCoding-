//
//  SecondViewController.m
//  UIController
//
//  Created by User on 2016. 5. 31..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()
@property (nonatomic) UISegmentedControl *segmentedControl;
@property (nonatomic ,weak) UIBarButtonItem *flexibleSapceItem;


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"jjj"];
    [self.navigationController setToolbarHidden:NO];
    
   self.segmentedControl = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"UP" ,@"Down",nil]];
    [self.segmentedControl addTarget:self action:@selector(segmentAction:)
               forControlEvents:UIControlEventValueChanged];
    self.segmentedControl.frame =CGRectMake(0, 0, 90, 35);
    self.segmentedControl.momentary = YES;
    UIBarButtonItem *segmentBarItem = [[UIBarButtonItem alloc]initWithCustomView:self.segmentedControl];
    self.navigationItem.rightBarButtonItem=segmentBarItem;
   
    
    
    
    UIBarButtonItem *flexibleSpaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target: nil action: nil];

    UISegmentedControl *sortToggle = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Ascending",@"Descending",nil]];
    sortToggle.selectedSegmentIndex = 0;
    [sortToggle addTarget:self action:@selector(toggleSorting:)
         forControlEvents:UIControlEventValueChanged];
    UIBarButtonItem *sortToggleButtonItem = [[UIBarButtonItem alloc]initWithCustomView:sortToggle];
    
    self.toolbarItems = [NSArray arrayWithObjects: flexibleSpaceItem, sortToggleButtonItem, flexibleSpaceItem, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nextBtn:(id)sender{
    //다음 화면으로 이동
    //1.객체 생성
    
    UIStoryboard *storyB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyB instantiateViewControllerWithIdentifier:@"MainView"];
    
    //2.push
    [self.navigationController pushViewController:vc animated:YES];
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
