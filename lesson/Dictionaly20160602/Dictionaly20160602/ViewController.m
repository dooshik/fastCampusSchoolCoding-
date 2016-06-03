//
//  ViewController.m
//  Dictionaly20160602
//
//  Created by User on 2016. 6. 2..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"
#import "DataCenter.h"


@interface ViewController ()
@property (nonatomic, weak) IBOutlet UITextField *nameTF;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onTouchUpInside:(id)sender
{
    NSLog(@"_______________");
    [[DataCenter sharedInstance] setName:self.nameTF.text];
    [[DataCenter sharedInstance] printData];
}

-(void )viewWillAppear:(BOOL)animated
{
    [[DataCenter sharedInstance]printData];
}

-(IBAction)event :(id)sender
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
