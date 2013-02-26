//
//  GGKPottyAttemptDayTableViewCell.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/24/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKPottyAttemptDayTableViewCell.h"

@implementation GGKPottyAttemptDayTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        // Initialization code. Doesn't seem to be called in this case.
        NSLog(@"PADTV iWS2");
//        self.backgroundColor = [UIColor whiteColor];
//        self.opaque = YES;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

// Show the day's attempts properly. This includes showing the used labels, hiding unused default labels, removing unused extra labels, assigning success/not labels correctly, and aligning the labels visually.
- (void)showAttempts
{
    NSLog(@"PADTVC updateAttemptLabels");
    
    // to get a boolean from the nsnumber that was stored
//    NSNumber *aNumber;
//    BOOL aBOOL = [aNumber boolValue];
}

- (void)showDate
{
    NSDictionary *aPottyAttemptDictionary = self.pottyAttemptArray[0];
    NSDate *theDate = aPottyAttemptDictionary[GGKPottyAttemptDateKeyString];
    
    // Abbreviated month and the day (e.g., Feb 23): MMMd.
    // http://waracle.net/iphone-nsdateformatter-date-formatting-table/
    NSString *monthDayDateFormatString = [NSDateFormatter dateFormatFromTemplate:@"MMMd" options:0 locale:[NSLocale currentLocale]];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:monthDayDateFormatString];
    NSString *theDateString = [dateFormatter stringFromDate:theDate];
    self.dateLabel.text = theDateString;
    
    //testing; print date for each entry in the array
    NSString *monthDayTimeDateFormatString = [NSDateFormatter dateFormatFromTemplate:@"MMMdH" options:0 locale:[NSLocale currentLocale]];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:monthDayTimeDateFormatString];
    [self.pottyAttemptArray enumerateObjectsUsingBlock:^(NSDictionary *aPottyAttemptDictionary, NSUInteger idx, BOOL *stop) {
        
        NSDate *theDate = aPottyAttemptDictionary[GGKPottyAttemptDateKeyString];
        NSString *theDateString = [dateFormatter stringFromDate:theDate];
        NSLog(@"showDate, idx:%d date:%@", idx, theDateString);
    }];
    
    
}

@end
