//
//  ENT.m
//  iEntourage
//
//  Created by King Keon on 11/21/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import "ENTTask.h"

@implementation ENTTask

- (void)markAsCompleted:(BOOL)isComplete{
    self.completed = isComplete;
    [self setCompletionDate];
}

- (void)setCompletionDate{
    if (self.completed) {
        
        self.completionDate = [NSDate date];
        
    }else{
        self.completionDate = nil;
    }
    
}

@end
