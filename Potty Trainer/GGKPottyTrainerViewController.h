//
//  GGKPottyTrainerViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/4/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

// String to identify the boy theme.
extern NSString *GGKBoyThemeString;

// String to identify the girl theme.
extern NSString *GGKGirlThemeString;

// Key for storing the name of the color theme to show.
extern NSString *GGKThemeKeyString;

@interface GGKPottyTrainerViewController : UIViewController

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

// UIViewController override.
- (void)viewDidLoad;

// UIViewController override.
- (void)viewWillAppear:(BOOL)animated;

@end
