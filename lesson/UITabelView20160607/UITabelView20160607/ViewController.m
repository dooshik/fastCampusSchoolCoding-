//
//  ViewController.m
//  UITabelView20160607
//
//  Created by User on 2016. 6. 7..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

<UITableViewDataSource ,UITableViewDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
   [super viewDidLoad];
    UITableView *tv =[[UITableView alloc]initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height-60) style:UITableViewStylePlain];
    tv.dataSource =self;
    tv.delegate=self;
    [self.view addSubview: tv];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 10;
    }else{
        return 5;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
   
    if (cell == nil) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        //UI
    }
    //Data
    NSString *title = [NSString stringWithFormat:@"%zd_%zd",indexPath.section, indexPath.row];
    cell.textLabel.text =title;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
