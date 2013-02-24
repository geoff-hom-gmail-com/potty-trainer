//
//  GGKHistoryViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/21/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGKHistoryViewController : UIViewController

// "Successful potties: X".
@property (weak, nonatomic) IBOutlet UILabel *successfulPottiesLabel;

// checkmarks and x's.
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

// Note that a successful potty was made.
- (IBAction)addSuccessfulPotty;

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

// Set number of successful potties to zero.
- (IBAction)resetNumberOfSuccessfulPotties;

// Update labels in case they changed.
- (void)updateLabels;

// UIViewController override.
- (void)viewDidLoad;

// UIViewController override.
- (void)viewWillAppear:(BOOL)animated;

@end
