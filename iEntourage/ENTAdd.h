//
//  ENTAdd.h
//  iEntourage
//
//  Created by King Keon on 11/20/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENTTask.h"

@interface ENTAdd : UIViewController
@property (weak, nonatomic) IBOutlet UITextField * textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem * doneButton; 

@property ENTTask * task;


@end
