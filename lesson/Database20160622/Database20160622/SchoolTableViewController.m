//
//  SchoolTableViewController.m
//  Database20160622
//
//  Created by User on 2016. 6. 22..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "SchoolTableViewController.h"
#import "AppDelegate.h"
#import "School+CoreDataProperties.h"
@interface SchoolTableViewController ()

@property (nonatomic,weak)AppDelegate *appDelegate;
@property (weak, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic,strong)NSMutableArray<School *> *schools;

@end

@implementation SchoolTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AppDelegate *appDelegate =[[UIApplication sharedApplication]delegate];
    self.appDelegate = appDelegate;
    
    self.managedObjectContext = appDelegate.managedObjectContext;
    
    //요청하는 설명서를 만든것이다. 예를 들면 도서관에서 대출신청서를 쓴것이다 아직 제출은 안 한상태다
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"School"];
    
    NSError *fetchError = nil;
    //이 부분이 제출하는 부분이다.
    NSArray<School *> *fetchResult = [self.managedObjectContext executeFetchRequest:fetchRequest error:&fetchError];
    
    NSLog(@"School array %@,fetch error :%@",fetchResult,fetchError);
    if (fetchError !=nil) {
        NSLog(@"Error occured %@",fetchError);
    }else{
        NSLog(@"Fetch success");
        //데이터는 가져왔지만 mutabelarray로 바꿔주는 것이다 왜냐면 계속 추가 될 것이기 때문에
        self.schools =[NSMutableArray arrayWithArray:fetchResult];
    }
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.schools.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SchoolCell" forIndexPath:indexPath];
    
    School *schoolInfo = [self.schools objectAtIndex:indexPath.row];
    cell.textLabel.text =schoolInfo.name;
    
    return cell;
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
- (IBAction)clichAddButton:(id)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"School" message:@"추가할 School 이름 입력" preferredStyle:UIAlertControllerStyleAlert
                                ];
    

    UIAlertAction *addAction = [UIAlertAction actionWithTitle:@"Add"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction * _Nonnull action){
                                                          UITextField *field = alert.textFields.firstObject;
                                                          NSString *inputText = field.text;
        if ([inputText length] !=0) {
            NSLog(@"%@",inputText);
            [self saveNewSchoolEntity:inputText];
        }
        
    }];
    UIAlertAction *cancleAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [alert addAction:addAction];
    [alert addAction:cancleAction];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"School 이름"];
    }];
    [self  presentViewController:alert animated:YES completion:nil];
}

-(void)saveNewSchoolEntity:(NSString *)name{
    School *schoolToAdd = [NSEntityDescription insertNewObjectForEntityForName:@"School"
                                  inManagedObjectContext:self.managedObjectContext];//새로운 엔티티에 해당하는 객체를 만들어달라고 한다.
    schoolToAdd.name = name;
    
    [self.appDelegate saveContext];
    
    [self.schools addObject:schoolToAdd];
    [self.tableView reloadData];
    
    
}
@end
