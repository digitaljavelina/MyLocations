//
//  LocationsViewController.m
//  MyLocations
//
//  Created by Michael Henry on 4/26/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import "LocationsViewController.h"
#import "Location.h"


@implementation LocationsViewController {
    
    NSArray *_locations;
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // 1
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    // 2
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Location" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    // 3
    
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:YES];
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    
    // 4
    
    NSError *error;
    NSArray *foundObjects = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (foundObjects == nil) {
        FATAL_CORE_DATA_ERROR(error);
        return;
    }
    
    // 5
    
    _locations = foundObjects;
}


#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Location"];
    
    Location *location = _locations[indexPath.row];
    
    UILabel *descriptionLabel = (UILabel *)[cell viewWithTag:100];
    descriptionLabel.text = location.locationDescription;
    
    UILabel *addressLabel = (UILabel *)[cell viewWithTag:101];
    addressLabel.text = [NSString stringWithFormat:@"%@ %@, %@",
                         location.placemark.subThoroughfare,
                         location.placemark.thoroughfare,
                         location.placemark.locality];
    
    return cell;
}

@end
