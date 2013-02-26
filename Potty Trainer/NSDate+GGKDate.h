//
//  NSDate+GGKDate.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/25/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (GGKDate)

// Return whether this date is the same day, a previous day, or a later day (in the Gregorian calendar).
- (NSComparisonResult)compareByDay:(NSDate *)theDate;

// Return whether this date is today (in the Gregorian calendar).
- (BOOL)dateIsToday;

@end
