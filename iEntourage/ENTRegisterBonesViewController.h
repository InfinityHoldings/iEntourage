//
//  ENTRegisterBonesViewController.h
//  iEntourage
//
//  Created by King Keon on 11/22/14.
//  Copyright (c) 2014 King Keon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ENTRegisterBonesViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField * username;
@property (weak, nonatomic) IBOutlet UITextField * email;
@property (weak, nonatomic) IBOutlet UITextField * city;
@property (weak, nonatomic) IBOutlet UITextField * state;
@property (weak, nonatomic) IBOutlet UITextField * password;

@property (weak, nonatomic) IBOutlet UIImageView * profilePic;

@property IBOutlet UIButton * registerButton;

@end
