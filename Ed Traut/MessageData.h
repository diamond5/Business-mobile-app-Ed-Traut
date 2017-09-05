//
//  MessageData.h
//  Ed Traut
//
//  Created by Super on 4/10/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessageData : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *content;
@property (strong, nonatomic) NSString *received_date;

- (void) encodeWithCoder : (NSCoder *)encode;
- (id) initWithCoder : (NSCoder *)decode;


@end
