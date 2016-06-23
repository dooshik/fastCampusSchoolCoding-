//
//  TableViewController.m
//  NetworkMiniProjectPractice20160622
//
//  Created by User on 2016. 6. 22..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property(nonatomic)NSString *userID;
@property(nonatomic)UITableViewCell *cell;
@property(nonatomic)UIImagePickerController *pickerController;
@end

@implementation TableViewController
- (IBAction)refreshButton:(id)sender {
    
}
- (IBAction)gopPickerImage:(id)sender {
    [self showImagePickerWithSourceType:UIImagePickerControllerSourceTypePhotoLibrary];

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
   // [self.pickerController setDelegate:self];
   }
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [super viewDidAppear:animated];
    
    if (self.userID != nil) {
        return;
    }
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"들어가볼까?" message:@"번호는알고?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *identify = [UIAlertAction actionWithTitle:@"확인"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                         
                                                         UITextField *inputField = alert.textFields.firstObject;
                                                         NSString *inputText = inputField.text;
                                                         
                                                         if ([inputText isEqualToString:@"111"]) {
                                                             self.userID = inputText;
                                                         }
                                                         
                                                     }];
    [alert addAction:identify];
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        [textField setPlaceholder:@"Number"];
    }];
    [self  presentViewController:alert animated:YES completion:nil];

    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
   cell.textLabel.text = @"aaa";
    
    self.cell =cell;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController *VC = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
   
    [self.navigationController pushViewController:VC animated:YES];
    
}
-(void)showImagePickerWithSourceType:(UIImagePickerControllerSourceType)sourceType{
//    
//    if ([UIImagePickerController isSourceTypeAvailable:sourceType]==NO){
//        NSLog(@"이 소스 못쓴디야");
//        return;
//    }
//    
    
    UIImagePickerController *pickerController =[[UIImagePickerController alloc]init];
    [pickerController setSourceType: sourceType];
    [pickerController setDelegate:self];
    //self.pickerController = pickerController;
    [pickerController setAllowsEditing:YES];
    
    [self presentViewController:pickerController animated:YES completion:nil];

    
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {

    NSLog(@"**************called");
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"힘들어요" message:@"정말 히들어요" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"확인"
                                                          style:UIAlertActionStyleDefault
                                                        handler:^(UIAlertAction * _Nonnull action){
                                                            
                                                        }];
    
    [alert addAction:alertAction];
    
    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        [textField  setPlaceholder:@"name"];
    }];
    [self presentViewController:alert animated:YES completion:nil];
    //    [self presentViewController:alert animated:YES completion:nil];
    
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
