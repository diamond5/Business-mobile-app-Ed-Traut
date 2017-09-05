//
//  MainViewController.m
//  Ed Traut
//
//  Created by eden on 3/5/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import "MainViewController.h"
#import "ButtonCell.h"
#import "HeaderView.h"
#import "WebViewController.h"
#import "MyList.h"
#import <sys/utsname.h>

@interface MainViewController (){
    NSString *urlString;
    NSString *titleString;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    // Do any additional setup after loading the view.
    self.mainCollectionView.backgroundColor = [UIColor clearColor];
    self.mainCollectionView.bounces = NO;
    
    self.msgCount.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap)];
    [self.msgCount addGestureRecognizer:tapGesture];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveUpdateCountNotification:)
                                                 name:@"DidEnterForeground"
                                               object:nil];
}

- (void) receiveUpdateCountNotification:(NSNotification *) notification {
    
    if ([[notification name] isEqualToString:@"DidEnterForeground"]) {
        [self updateMessageCount];
    }
}

-(void)labelTap{
    NSLog(@"message Count: XXX");
    [self performSegueWithIdentifier:@"ToMessageView" sender:self];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self updateMessageCount];
}

-(void)updateMessageCount{
    NSInteger msgCount =  [MyList getInstance].m_messageList.count;
    
    if(msgCount == 0) {
        self.msgCount.text = @"";
    }
    else {
        self.msgCount.text = [[NSString alloc] initWithFormat:@"%ld", (long)msgCount];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (section == 0) {
        return 12;
    }
    else {
        return 5;
    }
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"Cell";
    ButtonCell *cell = (ButtonCell*)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(indexPath.section == 0) {
        
        switch (indexPath.row) {
            case 0:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Daily_btn"]];
                break;
            case 1:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"What_Is_btn"]];
                break;
            case 2:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Let_The_Prophets_btn"]];
                break;
            case 3:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Public_Chat"]];
                break;
            case 4:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Store"]];
                break;
            case 5:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Give"]];
                break;
            case 6:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Coaching"]];
                break;
            case 7:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Media_Archive"]];
                break;
            case 8:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Events"]];
                break;
            case 9:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"Facebook"]];
                break;
            case 10:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"About_Ed"]];
                break;
            case 11:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"SOS"]];
                break;
            default:
                break;
        }
    }
    else {
        cell.imageViewBtn.contentMode = UIViewContentModeScaleToFill;
        switch (indexPath.row) {
            case 0:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"email"]];
                break;
            case 1:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"podcast"]];
                break;
            case 2:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"twitter"]];
                break;
            case 3:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"call"]];
                break;
            case 4:
                [cell.imageViewBtn setImage:[UIImage imageNamed:@"map"]];
                break;
            default:
                break;
        }
    }
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                urlString = @"https://propheticlife.com/pages/mobile-chat-ddlw";
                titleString = @"";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 1:
                urlString = @"https://propheticlife.com/pages/mobile-chat-wipes";
                titleString = @"";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 2:
                urlString = @"https://propheticlife.com/pages/mobile-chat-ltps";
                titleString = @"";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 3:
                urlString = @"https://propheticlife.com/pages/mobile-chat-gen";
                titleString = @"";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 4:
                urlString = @"https://propheticlife.com/pages/mobile-store";
                titleString = @"Store";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 5:
                urlString = @"https://propheticlife.com/pages/mobile-give";
                titleString = @"Give";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 6:
                urlString = @"https://propheticlife.com/pages/mobile-coaching";
                titleString = @"Coaching";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 7:
                urlString = @"https://propheticlife.com/pages/mobile-archive";
                titleString = @"Media Archive";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 8:
                urlString = @"https://propheticlife.com/pages/mobile-calendar";
                titleString = @"Events";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 9:
                urlString = @"https://propheticlife.com/pages/mobile-fb";
                titleString = @"Facebook";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 10:
                urlString = @"https://propheticlife.com/pages/mobile-about-us";
                titleString = @"About Ed";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            case 11:
                urlString = @"https://propheticlife.com/pages/mobile-sos";
                titleString = @"SOS";
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString] options:@{} completionHandler:nil];
                return;
            default:
                urlString = @"";
                break;
        }
    }
    else {
        switch (indexPath.row) {
            case 0:
                urlString = @"https://propheticlife.com/pages/mobile-email";
                titleString = @"";
                break;
            case 1:
                urlString = @"https://propheticlife.com/pages/mobile-podcast";
                titleString = @"";
                break;
            case 2:
                urlString = @"https://propheticlife.com/pages/mobile-twitter";
                titleString = @"";
                break;
            case 3:
                urlString = @"https://propheticlife.com/pages/mobile-call-ed";
                titleString = @"";
                break;
            case 4:
                urlString = @"https://propheticlife.com/pages/mobile-map";
                titleString = @"";
                break;
            default:
                urlString = @"";
                break;
        }

    }
    
    WebViewController *webVC = [self.storyboard instantiateViewControllerWithIdentifier:@"WebViewController"];
    
    webVC.urlStr = urlString;
    webVC.titleStr = titleString;
    
    [self.navigationController pushViewController:webVC animated:YES];
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    CGFloat width, height;
    
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString* deviceInfo =  [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    if(indexPath.section == 0) {
        width  = screenSize.width / 2 - 20.0f;
        height = width;
    }
    else {
        if ([deviceInfo isEqual:@"iPhone8,2"]) {
            width  = collectionView.frame.size.width/ 4.7;
        }
        else {
            width  = collectionView.frame.size.width/ 5;
        }

        height = screenSize.height / 11;
    }
    
    return CGSizeMake(width, height);

}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    if (section == 0) {
        return UIEdgeInsetsMake(10, 15, 10, 15);
    }
    else {
        return UIEdgeInsetsMake(0, 0, 0, 0);
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString* deviceInfo = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    if ([deviceInfo  isEqual: @"iPhone8,2"]) {
        return -20;
    }
    else {
        return 0;
    }
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}

@end
