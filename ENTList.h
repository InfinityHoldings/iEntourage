//
//  ENTList.h
//  iEntourage
//
//  Created by King Keon on 11/20/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENTList : UITableViewController <UITableViewDataSource>

@property NSMutableArray * taskList;

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;



@end
