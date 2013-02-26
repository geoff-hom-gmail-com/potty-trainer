//
//  NSDate+GGKDate.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/25/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "NSDate+GGKDate.h"

@implementation NSDate (GGKDate)

- (NSComparisonResult)compareByDay:(NSDate *)theDate
{
    NSComparisonResult theComparisonResult;
    
    // Was using the code that is commented below. However, it seems to calculate based on a specific time zone, e.g. GMT. So two dates may be different in GMT but the same in PST.
    
//    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
//    NSInteger thisDateDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:self];
//    NSInteger theDateDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:theDate];
//    theComparisonResult = [[NSNumber numberWithInteger:thisDateDay] compare:[NSNumber numberWithInteger:theDateDay]];
    
    // We'll get the year, month and day for both dates, then compare them.
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSCalendarUnit aCalendarUnit = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *thisDateDateComponents = [gregorianCalendar components:aCalendarUnit fromDate:self];
    NSDateComponents *theDateDateComponents = [gregorianCalendar components:aCalendarUnit fromDate:theDate];
    
    theComparisonResult = [[NSNumber numberWithInteger:thisDateDateComponents.year] compare:[NSNumber numberWithInteger:theDateDateComponents.year]];
    if (theComparisonResult == NSOrderedSame) {
        
        theComparisonResult = [[NSNumber numberWithInteger:thisDateDateComponents.month] compare:[NSNumber numberWithInteger:theDateDateComponents.month]];
        if (theComparisonResult == NSOrderedSame) {
            
            theComparisonResult = [[NSNumber numberWithInteger:thisDateDateComponents.day] compare:[NSNumber numberWithInteger:theDateDateComponents.day]];
        }
    }
    
    return theComparisonResult;
}

- (BOOL)dateIsToday
{
    BOOL dateIsToday = NO;
    
    NSDate *todayDate = [NSDate date];
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSCalendarUnit aCalendarUnit = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *thisDateDateComponents = [gregorianCalendar components:aCalendarUnit fromDate:self];
    NSDateComponents *todayDateDateComponents = [gregorianCalendar components:aCalendarUnit fromDate:todayDate];
    if (thisDateDateComponents.day == todayDateDateComponents.day && thisDateDateComponents.month == todayDateDateComponents.month && thisDateDateComponents.year == todayDateDateComponents.year) {
        
        dateIsToday = YES;
    }
    
    return dateIsToday;
}

@end
