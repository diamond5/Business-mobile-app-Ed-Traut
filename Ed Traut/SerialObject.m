//
//  SerialObject.m
//  Ed Traut
//
//  Created by Super on 4/10/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import "SerialObject.h"

@implementation SerialObject

+(void)writeToUserDefaults:(NSString *)keyName withArray:(NSMutableArray *)myArray
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:myArray];
    [defaults setObject:data forKey:keyName];
    [defaults synchronize];
}

+(NSArray *)readFromUserDefaults:(NSString*)keyName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *data = [defaults objectForKey:keyName];
    NSArray *myArray = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    //[defaults synchronize];
    return myArray;
}


@end
