//
//  JournalViewController.m
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/5/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import "JournalViewController.h"
#import "TableViewController.h"
#import "AFNetworking.h"

@interface JournalViewController ()


@end

@implementation JournalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submit:(UIButton *)sender {
    float energyval = _Energy.value;
    float moodval = _Mood.value;
    float stressval = _Stress.value;
    NSString *thoughtsText = _Thoughts.text;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    NSDate *date = [NSDate date];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];


    // code to get the date and time  in a string.
    
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"energy": [NSString stringWithFormat: @"%f", energyval],
                                 @"mood": [NSString stringWithFormat: @"%f", moodval],
                                 @"stress": [NSString stringWithFormat: @"%f", stressval],
                                 @"date": formattedDateString,
                                 @"journal_entry": thoughtsText,};
    [manager POST:@"http://0.0.0.0:3000/journal/log" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

    
    
    
    
    
    
    
   // NSLog(@"Energy: %f", energyval);
    //NSLog(@"Mood: %f", moodval);
   // NSLog(@"Stress: %f", stressval);
   // NSLog(@"%@",thoughtsText);
    //send it to server at this point.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    //PTDBean * bean = [self.beans.allValues objectAtIndex:indexPath.row];
    //TableViewController *destController = segue.destinationViewController;
    UINavigationController *nav = segue.destinationViewController;
    TableViewController *destController = (TableViewController *)nav.topViewController;

    destController.NewTitle = @"Barcelona";
    destController.NewDescription = @"Entry:";
    destController.NewImage = @"nike.png";
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    NSDate *date = [NSDate date];
    //NSString *formattedDateString = [dateFormatter stringFromDate:date];
    _dateString = [dateFormatter stringFromDate:date];
    NSLog(@"Date: %@", _dateString);

    destController.dateString = _dateString;
    destController.energyString = [NSString stringWithFormat: @"%f", _Energy.value];
    destController.moodString = [NSString stringWithFormat: @"%f", _Mood.value];
    destController.stressString = [NSString stringWithFormat: @"%f", _Stress.value];
    destController.thoughtString = _Thoughts.text;
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
