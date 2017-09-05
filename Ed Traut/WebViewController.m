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
    
    // Clear Web Cache
    
//    [[NSURLCache sharedURLCache] removeAllCachedResponses];
//    
//    for (NSHTTPCookie *cookie in [[NSHTTPCookieStorage sharedHTTPCookieStorage] cookies]) {
//        [[NSHTTPCookieStorage sharedHTTPCookieStorage] deleteCookie:cookie];
//    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//- (IBAction)onBackBtnClick:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:nil]; // <back
//}

- (IBAction)onBackBtnClick1:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:nil]; // <back
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

@end
