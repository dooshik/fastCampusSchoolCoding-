//
//  ViewController.m
//  HomeWorkUIWebView
//
//  Created by User on 2016. 5. 27..
//  Copyright © 2016년 Shin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//<UIWebViewDelegate>
@property(nonatomic,weak) IBOutlet UITextField *textField;
@property(nonatomic,weak) IBOutlet UIWebView *webView;
@property(nonatomic,weak) IBOutlet UIToolbar *toolBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

//-(void)setTextField:(UITextField *)textField{
//    [textField insertText:nss];
// }
//



-(IBAction)setButton:(UIButton *)button{
    NSURL *url = [NSURL URLWithString: self.textField.text];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}



-(IBAction)backEvent:(id)sender {
    if (self.webView.canGoBack )  {
        [self.webView goBack];
    }
    
}
-(IBAction)forwardevent:(id)sender {
    if (self.webView.canGoForward){
        [self.webView goForward];
    }
    
}
-(IBAction)reflash:(id)sender {
    [self.webView reload];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
