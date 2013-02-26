//
//  GGKPottyAttemptDayTableViewCell.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/24/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGKPottyAttemptDayTableViewCell : UITableViewCell

// The date of the potty attempts.
//@property (nonatomic, strong) NSDate *date;

// For showing the date of the potty attempts. E.g., "2/22, Fri."
@property (nonatomic, weak) IBOutlet UILabel *dateLabel;

// For marking the end time of the range shown.
@property (nonatomic, weak) IBOutlet UILabel *endMarkLabel;

// For showing the 1st attempt.
@property (nonatomic, weak) IBOutlet UILabel *attempt1Label;

// An array of the potty attempts for this date.
@property (nonatomic, strong) NSArray *pottyAttemptArray;

// For marking the start time of the range shown.
@property (nonatomic, weak) IBOutlet UILabel *startMarkLabel;

// Show the day's attempts properly. This includes showing the used labels, hiding unused default labels, removing unused extra labels, assigning success/not labels correctly, and aligning the labels visually.
- (void)showAttempts;

// Show this cell's date. We want to show only the month and day (e.g., Feb 23).
- (void)showDate;

@end
