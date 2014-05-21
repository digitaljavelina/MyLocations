//
//  NSMutableString+AddText.m
//  MyLocations
//
//  Created by Michael Henry on 5/19/14.
//  Copyright (c) 2014 Digital Javelina, LLC. All rights reserved.
//

#import "NSMutableString+AddText.h"

@implementation NSMutableString (AddText)

- (void)addText:(NSString *)text withSeparator:(NSString *)separator {
    
    if (text != nil) {
        if ([self length] > 0) {
            [self appendString:separator];
        }
        
        [self appendString:text];
    }
}

@end
