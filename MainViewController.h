//
//  MainViewController.h
//  Ed Traut
//
//  Created by eden on 3/5/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface MainViewController : ViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;

@property (weak, nonatomic) IBOutlet UILabel *msgCount;




@end
