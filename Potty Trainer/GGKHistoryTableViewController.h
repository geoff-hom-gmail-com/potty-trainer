//
//  GGKHistoryTableViewController.h
//  Potty Trainer
//
//  Created by Geoff Hom on 2/23/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGKHistoryTableViewController : UITableViewController

// The table header.
//@property (weak, nonatomic) IBOutlet UIView *headerView;

// Play sound as aural feedback for pressing button.
- (IBAction)playButtonSound;

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section;
// So, return the header view.

@end
