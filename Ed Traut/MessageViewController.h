//
//  MessageViewController.h
//  Ed Traut
//
//  Created by Super on 4/9/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (weak, nonatomic) IBOutlet UITableView *tableViewMsg;
- (IBAction)OnBacKButtonClick:(id)sender;


@end
