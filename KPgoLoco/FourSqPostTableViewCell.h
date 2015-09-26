//
//  FourSqPostTableViewCell.h
//  KPgoLoco
//
//  Created by MacMan on 9/25/15.
//  Copyright © 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourSqPostTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *captionLabel;

@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *likeCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagCountLabel;


@end
