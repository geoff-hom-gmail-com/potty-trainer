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
}

- (void)showDate
{
    // The date looks different depending on locale. what are the string methods for NSDate?
    NSLog(@"showDate");
    ;
}


@end
