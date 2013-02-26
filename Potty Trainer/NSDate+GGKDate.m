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
    
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSInteger thisDateDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:self];
    NSInteger theDateDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:theDate];
    
    theComparisonResult = [[NSNumber numberWithInteger:thisDateDay] compare:[NSNumber numberWithInteger:theDateDay]];
    
    return theComparisonResult;
}

- (BOOL)dateIsToday
{
    BOOL dateIsToday = NO;
    
    NSDate *todayDate = [NSDate date];
    NSCalendar *gregorianCalendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSInteger todayDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:todayDate];
    NSInteger thisDateDay = [gregorianCalendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:self];
    NSInteger numberOfDaysBetweenInteger = todayDay - thisDateDay;
    if (numberOfDaysBetweenInteger == 0) {
        
        dateIsToday = YES;
    }
    
    return dateIsToday;
}

@end
