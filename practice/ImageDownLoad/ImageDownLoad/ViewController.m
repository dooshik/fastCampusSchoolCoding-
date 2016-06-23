//
//  ViewController.m
//  ImageDownLoad
//
//  Created by User on 2016. 6. 23..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,weak)IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    NSURLSessionDataTask *dataTesk = [session dataTaskWithURL:[NSURL URLWithString:@"http://www.casestudyo.com/wp-content/uploads/2012/08/1_sfmoma_parra_sfmomacommission_detail-1000x400.jpg" ] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data.length>0) {
            UIImage *image = [UIImage imageWithData:data];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.imageView.image = image;
                
            });
        }
    
        
    
    }];
    [dataTesk resume];


}
@end
