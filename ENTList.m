//
//  ENTList.m
//  iEntourage
//
//  Created by King Keon on 11/20/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import "ENTList.h"
#import "ENTTask.h"
#import "ENTAdd.h"

@implementation ENTList

//Protocol methods for UITableViewDataDelegate or something
- (NSInteger)numberOfSectionsInTableView:(UITableView * )tableview{
    return 1;
}

- (NSInteger)tableView:(UITableView * )tableView numberOfRowsInSection:(NSInteger)section{
    return [self.taskList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    
    //configure the cell
    
    ENTTask * task = [self.taskList objectAtIndex:indexPath.row];
    
    if (task.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    cell.textLabel.text = task.name;
    
    return cell;
}

# pragma mark - Table view delegate
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    ENTTask * task = [self.taskList objectAtIndex:indexPath.row];
    
    //set the completion status to the opposite of its current state using the negation operator !
    task.completed = !task.completed;
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue{
    ENTAdd * add = [segue sourceViewController];
    ENTTask * task = add.task;
    if (task != nil) {
        [self.taskList addObject:task];
        [self.tableView reloadData ];
    }
    
}



- (void) viewDidLoad{
    [super viewDidLoad];
    self.taskList = [[NSMutableArray alloc] init];
    [self loadInitialData];
}

- (void) loadInitialData{
    ENTTask * task1 = [[ENTTask alloc] init];
    task1.name = @"Raise credit score";
    [self.taskList addObject:task1] ;
    
    ENTTask * task2 = [[ENTTask alloc] init ];
    task2.name = @"Buy first investment property";
    [self.taskList addObject:task2];
    
    ENTTask * task3 = [[ENTTask alloc] init];
    task3.name = @"Collect residuals and reinvest!";
    [self.taskList addObject:task3];
}

@end
