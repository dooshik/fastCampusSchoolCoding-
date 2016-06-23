//
//  TableViewController.m
//  TableViewPractice20160621
//
//  Created by User on 2016. 6. 21..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "TableViewController.h"
#import "SecondTableViewController.h"
@interface TableViewController ()
@property (nonatomic) NSArray *list;
@property(nonatomic,strong)NSArray *section1Date;
@property(nonatomic,strong)NSArray *section2Date;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.section1Date = @[@"School",@"Camp"];
    self.section2Date = @[@"한국날씨",@"세계날씨"];
    self.list =@[self.section1Date,self.section2Date];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.list.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *sectionArray = [self.list objectAtIndex:section];
    
    return sectionArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSArray *section = [self.list objectAtIndex:indexPath.section];
    NSString *row = [section objectAtIndex:indexPath.row];
    if (indexPath.section==0) {
        cell.backgroundColor = [UIColor greenColor];
        cell.accessoryType =UITableViewCellAccessoryCheckmark;
    }
    else{
        cell.backgroundColor =[UIColor grayColor];
        cell.accessoryType = UITableViewCellAccessoryDetailButton;
        
        
    }
    
    [cell.textLabel setText:row];
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==1) {
        return 100;
    }
    return 40;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section==1) {
        return @"패스트캠퍼스";
    }
    return @"날씨";
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSArray *section = [self.list objectAtIndex:indexPath.section];
//    NSString *row = [section objectAtIndex:indexPath.row];
    SecondTableViewController * stvc = [[SecondTableViewController alloc]init];
    [self.navigationController pushViewController:stvc animated:YES];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
