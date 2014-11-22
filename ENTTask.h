//
//  ENT.h
//  iEntourage
//
//  Created by King Keon on 11/21/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ENTTask : NSObject

@property NSString * name;
@property NSDate * completionDate;
@property(readonly) NSDate * creationDate;
@property BOOL completed;

- (void)markAsCompleted:(BOOL)isComplete; 

@end
