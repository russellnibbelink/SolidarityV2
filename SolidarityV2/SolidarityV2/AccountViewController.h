//
//  AccountViewController.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/5/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *FirstName;
@property (weak, nonatomic) IBOutlet UITextField *LastName;
@property (weak, nonatomic) IBOutlet UITextField *Email;
@property (weak, nonatomic) IBOutlet UITextField *Password;
@property (weak, nonatomic) IBOutlet UITextField *Clinician;

@end
