//
//  AccountViewController.m
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/5/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import "AccountViewController.h"
#import "AFNetworking.h"

@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)createAccount:(UIButton *)sender {
    NSString *FirstNameText = _FirstName.text;
    NSString *LastNameText = _LastName.text;
    NSString *EmailText = _Email.text;
    NSString *PasswordText = _Password.text;
    NSString *ClinicianText = _Clinician.text;
    NSLog(@"%@",FirstNameText);
    NSLog(@"%@",LastNameText);
    NSLog(@"%@",EmailText);
    NSLog(@"%@",PasswordText);
    NSLog(@"%@",ClinicianText);
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"first_name":FirstNameText, @"last_name": LastNameText, @"email": EmailText, @"password": PasswordText, @"clinician": ClinicianText,};
    [manager POST:@"http://0.0.0.0:3000/user/create" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
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
