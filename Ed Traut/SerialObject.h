//
//  SerialObject.h
//  Ed Traut
//
//  Created by Super on 4/10/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SerialObject : NSObject

+(void)writeToUserDefaults:(NSString *)keyName withArray:(NSMutableArray *)myArray;
+(NSArray *)readFromUserDefaults:(NSString*)keyName;


@end
