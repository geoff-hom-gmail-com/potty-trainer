//
//  GGKSettingsViewController.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/21/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKSettingsViewController.h"

@interface GGKSettingsViewController ()

// For playing sound.
@property (strong, nonatomic) GGKSoundModel *soundModel;

@end

@implementation GGKSettingsViewController

- (void)alertView:(UIAlertView *)theAlertView clickedButtonAtIndex:(NSInteger)theButtonIndex
{
    if ([[theAlertView buttonTitleAtIndex:theButtonIndex] isEqualToString:@"OK"]) {
        
        [[NSUserDefaults standardUserDefaults] setObject:nil forKey:GGKPottyAttemptsKeyString];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)playButtonSound
{
    [self.soundModel playButtonTapSound];
}

- (IBAction)resetHistory
{
    // Put the cancel button on the right, since this is a potentially risky action.
    UIAlertView *anAlertView = [[UIAlertView alloc] initWithTitle:@"Delete potty history?" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", @"Cancel", nil];
    anAlertView.cancelButtonIndex = 1;
    [anAlertView show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.soundModel = [[GGKSoundModel alloc] init];
}

@end
