//
//  DetailViewController.m
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/6/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dateLabel.text = _DetailModal[0];
    _moodLabel.text = _DetailModal[1];
    _energyLabel.text = _DetailModal[2];
    _stressLabel.text = _DetailModal[3];
    _thoughtLabel.text = _DetailModal[4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
