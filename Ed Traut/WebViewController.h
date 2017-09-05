//
//  WebViewController.h
//  Ed Traut
//
//  Created by eden on 3/5/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIWebView *webViewEd;
@property (strong, nonatomic) NSString *urlStr;
@property (strong, nonatomic) NSString *titleStr;
//- (IBAction)onBackBtnClick:(id)sender;
- (IBAction)onBackBtnClick1:(id)sender;


@end
