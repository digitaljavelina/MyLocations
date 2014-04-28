//
//  LocationsViewController.h
//  MyLocations
//
//  Created by Michael Henry on 4/26/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationsViewController : UITableViewController

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@end
