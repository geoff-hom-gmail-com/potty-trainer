//
//  GGKHistoryViewController.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/21/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKHistoryViewController.h"

@interface GGKHistoryViewController ()

// For playing sound.
@property (strong, nonatomic) GGKSoundModel *soundModel;

@end

@implementation GGKHistoryViewController

- (IBAction)addSuccessfulPotty
{
    // Get current value. Increase by one.
    NSNumber *theNumberOfSuccessfulPottiesNumber = [[NSUserDefaults standardUserDefaults] objectForKey:GGKNumberOfSuccessfulPottiesKeyString];
    if (theNumberOfSuccessfulPottiesNumber == nil) {
        
        theNumberOfSuccessfulPottiesNumber = @1;
    } else {
        
        theNumberOfSuccessfulPottiesNumber = @([theNumberOfSuccessfulPottiesNumber intValue] + 1);
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:theNumberOfSuccessfulPottiesNumber forKey:GGKNumberOfSuccessfulPottiesKeyString];
    [self updateLabels];
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

- (IBAction)resetNumberOfSuccessfulPotties
{
    [[NSUserDefaults standardUserDefaults] setObject:nil forKey:GGKNumberOfSuccessfulPottiesKeyString];
    [self updateLabels];
}

- (void)updateLabels
{    
    NSNumber *theNumberOfSuccessfulPottiesNumber = [[NSUserDefaults standardUserDefaults] objectForKey:GGKNumberOfSuccessfulPottiesKeyString];
    if (theNumberOfSuccessfulPottiesNumber == nil) {
        
        theNumberOfSuccessfulPottiesNumber = @0;
    }
    self.successfulPottiesLabel.text = [NSString stringWithFormat:@"Successes(S): %@", theNumberOfSuccessfulPottiesNumber];
    
    self.testLabel.text = @"2/20, W  ...SS.S.n.S.n..";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.soundModel = [[GGKSoundModel alloc] init];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self updateLabels];
}

@end
