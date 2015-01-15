//
//  TableViewController.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/6/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface TableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *Images;
@property (nonatomic, strong) NSMutableArray *Title;
@property (nonatomic, strong) NSMutableArray *Description;

//detail view properties
@property (nonatomic, strong) NSMutableArray *dateStamps;
@property (nonatomic, strong) NSMutableArray *moods;
@property (nonatomic, strong) NSMutableArray *energies;
@property (nonatomic, strong) NSMutableArray *stresses;
@property (nonatomic, strong) NSMutableArray *thoughts;

//initializing from the AppDelegate

@property (nonatomic, strong) AppDelegate *mainDelegate;

@property (nonatomic, weak) NSString *dateString;
@property (nonatomic, weak) NSString *energyString;
@property (nonatomic, weak) NSString *moodString;
@property (nonatomic, weak) NSString *stressString;
@property (nonatomic, weak) NSString *thoughtString;

@property (nonatomic, weak) NSString *testVal;


@property (nonatomic, weak) NSString *NewTitle;
@property (nonatomic, weak) NSString *NewDescription;
@property (nonatomic, weak) NSString *NewImage;





@end
