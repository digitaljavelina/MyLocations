//
//  LocationCell.h
//  MyLocations
//
//  Created by Michael Henry on 4/29/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, weak) IBOutlet UILabel *addressLabel;

@end
