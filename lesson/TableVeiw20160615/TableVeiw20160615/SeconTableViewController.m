//
//  SeconTableViewController.m
//  TableVeiw20160615
//
//  Created by User on 2016. 6. 15..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SeconTableViewController.h"
#import "ViewController.h"
@interface SeconTableViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, strong) NSDictionary *data;
@property (nonatomic, strong) NSArray *selectedData;

@end

@implementation SeconTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *shchoolList = @[@"iOS",@"Android",@"web",@"front"];
    NSArray *campList = @[@"iOS입문",@"iOS초급",@"iOS중급"];
    
    self.data = @{@"School":shchoolList,@"Camp":campList};
    
    self.selectedData = [self.data objectForKey:self.inputKey];
    

}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.selectedData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSString *text = [self.selectedData objectAtIndex:indexPath.row];
    [cell.textLabel setText:text];
    
    
    return cell;

}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   //선택된 로우의 택스트를 뷰컨트롤러의 라벨에 보내준다.
    
    
    ViewController *vc =[self.storyboard instantiateViewControllerWithIdentifier:@"ViewController1"];
    NSString *text =[self.selectedData objectAtIndex:indexPath.row];
    NSLog(@"%@", text );

   vc.data = @"text";
    
//
    NSLog(@"%@",vc.label);
   [self presentViewController:vc animated:YES completion:nil];
//   [vc.label setText:text];
    
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
