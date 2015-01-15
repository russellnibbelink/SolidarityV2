//
//  TableViewCell.h
//  SolidarityV2
//
//  Created by Russell Nibbelink on 12/6/14.
//  Copyright (c) 2014 Pickvee Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UILabel *TitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *DescriptionLabel;
@property (nonatomic, strong) IBOutlet UIImageView *ThumbImage;


@end
