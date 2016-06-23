//
//  EditingTableViewController.m
//  09
//
//  Created by User on 2016. 6. 9..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "EditingTableViewController.h"
#import "DataCenter.h"

@interface EditingTableViewController ()
@property(nonatomic ,strong)DataCenter *dataCenter;

@end

@implementation EditingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataCenter =[DataCenter defaultData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    return [[self.dataCenter dataForSection:section] count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"
                                                           forIndexPath:indexPath];
    
    NSMutableArray *data =[self.dataCenter dataForSection:indexPath.section];
    NSString *text =[data objectAtIndex:indexPath.row];
    // 오른쪽 text는 위의 nsstring의 text이고 왼쪽은 우리가 눈으로 보게될 텍스트 라벨이다.
    cell.textLabel.text =text;
    
    return cell;
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/


   //만약 어떤 값이 리턴 되길 바라지 않는 다면 No를 해라
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 
    // Return NO if you do not want the specified item to be editable.
//    if (indexPath.section ==0 && indexPath.section ==0) {
//        return NO;
//    }
    return YES;
}


//NS_ENUM 은 중복 선택이 불가능하다.
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0) {
        return UITableViewCellEditingStyleDelete;
    }
    return UITableViewCellEditingStyleInsert;
}




// Override to support editing the table view.

//어떤 인덱스에 어떤 스타일을 원하는지 알려주는 메소드
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [self.dataCenter removeFirstSectionItemAtIndex:indexPath.row];
        /*눈에 보이는 뷰는 지워지는데 데이터센터에 있는 정보가 지워지지 않으니까 서로 혼란이 생기게된다.
        //그래서 위의 문장을 추가해 주는 것이다. 그러면 데이터센터에서도 지워지기 때문에 혼란이 생기지 않는다.*/
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100.0f;
}



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
-(IBAction)clickInsertNewItemButton:(id)sender{
    NSLog(@"Click!!");
    
    NSArray *secondData =[self.dataCenter dataForSection:1];
    NSIndexPath *indexPath =[NSIndexPath indexPathForRow:secondData.count inSection:1];
    [self.dataCenter insertNewItemInSecondSection];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

@end

















