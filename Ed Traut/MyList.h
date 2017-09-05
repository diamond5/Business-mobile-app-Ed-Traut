//
//  MyList.h
//  Ed Traut
//
//  Created by Super on 4/10/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyList : NSObject {
    
    NSMutableArray *m_messageList;
}

@property(nonatomic)NSMutableArray *m_messageList;

+(MyList*)getInstance;


@end
