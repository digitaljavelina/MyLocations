//
//  Location.h
//  MyLocations
//
//  Created by Michael Henry on 4/24/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Location : NSManagedObject <MKAnnotation>

@property (nonatomic, retain) NSString * category;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSString * locationDescription;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) CLPlacemark *placemark;
@property (nonatomic, retain) NSNumber * photoId;

+ (NSInteger)nextPhotoId;

- (BOOL)hasPhoto;
- (NSString *)photoPath;
- (UIImage *)photoImage;

- (void)removePhotoFile;

@end
