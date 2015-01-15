//
//  DetailViewController.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/6/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController



@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *energyLabel;
@property (weak, nonatomic) IBOutlet UILabel *moodLabel;
@property (weak, nonatomic) IBOutlet UILabel *stressLabel;
@property (weak, nonatomic) IBOutlet UILabel *thoughtLabel;


@property (nonatomic, strong) NSArray *DetailModal;


@end
