//
//  WebViewController.m
//  Ed Traut
//
//  Created by eden on 3/5/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webViewEd.scrollView.bounces = NO;
   [self.navigationController setNavigationBarHidden:NO animated:YES];
    // Do any additional setup after loading the view.
    self.navigationItem.title = self.titleStr;
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:self.urlStr];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [self.webViewEd loadRequest:requestObj];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

- (IBAction)onBackBtnClick1:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

@end
