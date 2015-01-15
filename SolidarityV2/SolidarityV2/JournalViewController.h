//
//  JournalViewController.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/5/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JournalViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *Energy;
@property (weak, nonatomic) IBOutlet UISlider *Mood;
@property (weak, nonatomic) IBOutlet UISlider *Stress;
@property (weak, nonatomic) IBOutlet UITextField *Thoughts;

@property (nonatomic, weak) NSString *dateString;



@end
