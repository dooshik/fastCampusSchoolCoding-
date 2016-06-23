//
//  TableViewController.m
//  TableVeiw20160615
//
//  Created by User on 2016. 6. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "TableViewController.h"
#import "SeconTableViewController.h"
@interface TableViewController ()<UITableViewDelegate>
@property (nonatomic,strong) NSArray *section1Data;
@property (nonatomic,strong) NSArray *section2Data;

@property (nonatomic, strong) NSArray *list;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     //  self.dataCenter = [DataCenter defaultDate];
   self.section1Data = @[@"School",@"Camp"];
   self.section2Data = @[@"한국날씨",@"세계날씨"];
    self.list = @[self.section1Data, self.section2Data];
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
    
    NSArray *dataArray = [self.list objectAtIndex:indexPath.section];
    
    NSString *text = [dataArray objectAtIndex:indexPath.row];

    if (indexPath.section == 0) {
        cell.backgroundColor = [UIColor greenColor];
        cell.accessoryType = UITableViewCellAccessoryDetailButton;
        
    }else{
        cell.backgroundColor = [UIColor grayColor];
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
      
    }
    
    [cell.textLabel setText:text];

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 1) {
        return 100.0;
    }
    
    return 40;
   
}
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return @"패스트캠퍼스 강좌";
    }else
        return @"날씨";
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *dataArray = [self.list objectAtIndex:indexPath.section];
    NSString *text = [dataArray objectAtIndex:indexPath.row];
    
    SeconTableViewController *STVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SeconTableViewController"];
    STVC.inputKey = text;
    
    [self.navigationController pushViewController:STVC animated:YES];
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
