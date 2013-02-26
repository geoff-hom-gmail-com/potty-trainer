//
//  GGKHistoryTableViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/23/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKAddPottyViewController.h"
#import <UIKit/UIKit.h>

@interface GGKHistoryTableViewController : UITableViewController <GGKAddPottyViewControllerDelegate>

- (void)addPottyViewControllerDidAddPottyAttempt:(UIViewController *)theViewController;
// So, dismiss the view controller.

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

// UIViewController override.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
// So, return the header view.

// UIViewController override.
- (void)viewDidLoad;

// UIViewController override.
- (void)viewWillAppear:(BOOL)animated;

@end
