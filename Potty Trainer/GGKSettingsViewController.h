//
//  GGKSettingsViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/21/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGKSettingsViewController : UIViewController

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

// Ask the user to confirm that she wants to reset the history of potty attempts.
- (IBAction)resetHistory;

@end
