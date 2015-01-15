//
//  DeviceViewController.m
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/7/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import "DeviceViewController.h"
#import "TableViewController.h"

@interface DeviceViewController ()

@end

@implementation DeviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _Title = [[NSMutableArray alloc] init];
    _Description = [[NSMutableArray alloc] init];
    _Images = [[NSMutableArray alloc] init];
    
    _stresses = [[NSMutableArray alloc] init];
    _moods = [[NSMutableArray alloc] init];
    _energies = [[NSMutableArray alloc] init];
    _thoughts = [[NSMutableArray alloc] init];
    _dateStamps = [[NSMutableArray alloc] init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    //PTDBean * bean = [self.beans.allValues objectAtIndex:indexPath.row];
    UINavigationController *nav = segue.destinationViewController;
    TableViewController *destController = (TableViewController *)nav.topViewController;
    destController.testVal = @"TESTING VAL UNO DOS TRES!";
    //destController.Title = _Title;
    //destController.Description = _Description;
    //destController.Images = _Images;
    //destController.stresses = _stresses;
    //destController.moods = _moods;
    //destController.energies = _energies;
    //destController.thoughts = _thoughts;
    //destController.dateStamps = _dateStamps;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
