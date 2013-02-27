//
//  GGKSettingsViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/21/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGKSettingsViewController : UIViewController <UIAlertViewDelegate>

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
// So, ???

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

- (IBAction)resetHistory;
// Ask the user to confirm she wants to reset the history of potty attempts.

@end
