//
//  CurrentLocationViewController.h
//  MyLocations
//
//  Created by Michael Henry on 3/29/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//



@interface CurrentLocationViewController : UIViewController <CLLocationManagerDelegate>

@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UILabel *latitudeLabel;
@property (nonatomic, weak) IBOutlet UILabel *longitudeLabel;
@property (nonatomic, weak) IBOutlet UILabel *addressLabel;
@property (nonatomic, weak) IBOutlet UIButton *tagButton;
@property (nonatomic, weak) IBOutlet UIButton *getButton;

- (IBAction)getLocation:(id)sender;

@end
