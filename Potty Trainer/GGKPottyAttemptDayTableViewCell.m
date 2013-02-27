//
//  GGKPottyAttemptDayTableViewCell.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/24/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKPottyAttemptDayTableViewCell.h"

@interface GGKPottyAttemptDayTableViewCell ()

@end

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
    static NSString *CheckMarkString = @"\u2714";
    static NSString *XMarkString = @"\u2718";
    
    NSLog(@"PADTVC updateAttemptLabels");
    self.attempt2Label.hidden = YES;
    
    NSDictionary *aPottyAttemptDictionary = self.pottyAttemptArray[0];
    
    // Assign success label.
    NSNumber *theAttemptWasSuccessfulBOOLNumber = aPottyAttemptDictionary[GGKPottyAttemptWasSuccessfulNumberKeyString];
    BOOL theAttemptWasSuccessfulBOOL = [theAttemptWasSuccessfulBOOLNumber boolValue];
    NSString *theAttemptString;
    if (theAttemptWasSuccessfulBOOL) {
        
        theAttemptString = CheckMarkString;
    } else {
        
        theAttemptString = XMarkString;
    }
    self.attempt1Label.text = theAttemptString;
    
    // Align label along timeline. If at or before the start time, put at start mark. If at or after the end time, put at end mark. Else, put between, at a proportionate amount.

    NSInteger startXInteger = self.startMarkLabel.center.x;
    NSInteger endXInteger = self.endMarkLabel.center.x;
//    NSLog(@"PADTV sA startX:%d endX:%d", startXInteger, endXInteger);
    
    NSDate *aDate = aPottyAttemptDictionary[GGKPottyAttemptDateKeyString];
    
    NSInteger minutesAfterStartTimeInteger = [aDate minutesAfterTime:self.startTimeDateComponents];
    CGPoint theNewCenterPoint;
    if (minutesAfterStartTimeInteger < 0) {
        
        theNewCenterPoint = CGPointMake(startXInteger, self.attempt1Label.center.y);
    } else if (minutesAfterStartTimeInteger > self.endMinutesAfterStartTimeInteger) {
        
        theNewCenterPoint = CGPointMake(endXInteger, self.attempt1Label.center.y);
    } else {
        
        NSInteger theProportionalXInteger = (endXInteger - startXInteger) * minutesAfterStartTimeInteger / self.endMinutesAfterStartTimeInteger;
        theNewCenterPoint = CGPointMake(startXInteger + theProportionalXInteger, self.attempt1Label.center.y);
    }
    self.attempt1Label.center = theNewCenterPoint;    
}

- (void)showDate
{
    NSDictionary *aPottyAttemptDictionary = self.pottyAttemptArray[0];
    NSDate *theDate = aPottyAttemptDictionary[GGKPottyAttemptDateKeyString];
    self.dateLabel.text = [theDate monthDayString];
}

@end
