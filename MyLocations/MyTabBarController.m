//
//  MyTabBarController.m
//  MyLocations
//
//  Created by Michael Henry on 5/19/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import "MyTabBarController.h"

@implementation MyTabBarController

- (UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    
    return nil;
}

@end
