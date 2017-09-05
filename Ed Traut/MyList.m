//
//  MyList.m
//  Ed Traut
//
//  Created by Super on 4/10/17.
//  Copyright © 2017 Petrus. All rights reserved.
//

#import "MyList.h"

@implementation MyList

@synthesize m_messageList;

static MyList *instance = nil;

+(MyList *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance= [MyList new];
        }
    }
    return instance;
}

@end
