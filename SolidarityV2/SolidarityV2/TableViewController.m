//
//  TableViewController.m
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/6/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"

@interface TableViewController ()



@end

@implementation TableViewController
@synthesize mainDelegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    mainDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    NSLog(@"%@",_testVal);
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //[_Title addObject:@"Big Ben"];
    //NSMutableArray *_Title = [[NSMutableArray alloc] init];
    //NSMutableArray *_Description = [[NSMutableArray alloc] init];
    //NSMutableArray *_Images = [[NSMutableArray alloc] init];
    /*_Title = @[@"Big Ben",
               @"Colosseum",
               @"Great Wall of China",
               @"St Basil's Cathedral",
               @"Statue of Liberty",
               @"Stonehenge",
               @"Taj, Mahal",
               @"The Eiffel Tower",
               @"Tower of Piza",];
    
    _Description = @[@"Big Ben",
               @"Colosseum",
               @"Great Wall of China",
               @"St Basil's Cathedral",
               @"Statue of Liberty",
               @"Stonehenge",
               @"Taj, Mahal",
               @"The Eiffel Tower",
               @"Tower of Piza",];
    
    _Images = @[@"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",
               @"nike.png",];*/
    NSLog(@"NewTitle: %@",_NewTitle);
    /*_Title = [[NSMutableArray alloc] init];
    _Description = [[NSMutableArray alloc] init];
    _Images = [[NSMutableArray alloc] init];
    
    _stresses = [[NSMutableArray alloc] init];
    _moods = [[NSMutableArray alloc] init];
    _energies = [[NSMutableArray alloc] init];
    _thoughts = [[NSMutableArray alloc] init];
    _dateStamps = [[NSMutableArray alloc] init];*/
    //_dateStamps = [[NSMutableArray alloc] init];
    //[_Title addObject:@"Working"];
    //[_Title addObject:@"Working"];
    //[_Title addObject:@"Working"];

    //[_Title insertObject:@"Its Working" atIndex:0];
    //[_Description insertObject:@"Entry:" atIndex:0];
    //[_Images insertObject:@"entry.png" atIndex:0];
    
    if (_NewTitle){
        //[_dateStamps insertObject: _dateString atIndex:0];
        NSLog(@"Date: %@", _dateString);
        [mainDelegate.Title insertObject: _dateString atIndex:0];
        [mainDelegate.Description insertObject: _NewDescription atIndex:0];
        [mainDelegate.Images insertObject:@"entry.png" atIndex:0];
        
        
        [mainDelegate.stresses insertObject:_stressString atIndex:0];
        [mainDelegate.moods insertObject:_moodString atIndex:0];
        [mainDelegate.energies insertObject:_energyString atIndex:0];
        [mainDelegate.thoughts insertObject:_thoughtString atIndex:0];
        [mainDelegate.dateStamps insertObject:_dateString atIndex:0];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return mainDelegate.Title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    int row = [indexPath row];
    cell.TitleLabel.text = mainDelegate.Title[row];
    cell.DescriptionLabel.text = mainDelegate.Description[row];
    cell.ThumbImage.image = [UIImage imageNamed:mainDelegate.Images[row]];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"ShowDetails"]){
        DetailViewController *detailviewcontroller = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        int row = [myIndexPath row];
        //detailviewcontroller.DetailModal = @[_Title[row],_Description[row],_Images[row]];
        detailviewcontroller.DetailModal = @[mainDelegate.dateStamps[row],mainDelegate.moods[row],mainDelegate.energies[row],mainDelegate.stresses[row],mainDelegate.thoughts[row]];
        
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
