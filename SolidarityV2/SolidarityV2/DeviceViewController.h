//
//  DeviceViewController.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/7/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *Images;
@property (nonatomic, strong) NSMutableArray *Title;
@property (nonatomic, strong) NSMutableArray *Description;

//detail view properties
@property (nonatomic, strong) NSMutableArray *dateStamps;
@property (nonatomic, strong) NSMutableArray *moods;
@property (nonatomic, strong) NSMutableArray *energies;
@property (nonatomic, strong) NSMutableArray *stresses;
@property (nonatomic, strong) NSMutableArray *thoughts;

@end
