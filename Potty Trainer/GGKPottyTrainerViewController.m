//
//  GGKPottyTrainerViewController.m
//  Potty Trainer
//
//  Created by Geoff Hom on 2/4/13.
//  Copyright (c) 2013 Geoff Hom. All rights reserved.
//

#import "GGKPickChildViewController.h"
#import "GGKPottyTrainerViewController.h"

NSString *GGKBoyThemeString = @"Boy theme";
NSString *GGKGirlThemeString = @"Girl theme";
NSString *GGKThemeKeyString = @"Theme";

@interface GGKPottyTrainerViewController ()

@property (strong, nonatomic) GGKPickChildViewController *pickChildViewController;

@end

@implementation GGKPottyTrainerViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    // Check theme.
    NSString *theThemeString = [[NSUserDefaults standardUserDefaults] objectForKey:GGKThemeKeyString];
    if ([theThemeString isEqualToString:GGKBoyThemeString]) {
        
        self.view.backgroundColor = [UIColor cyanColor];
    } else if ([theThemeString isEqualToString:GGKGirlThemeString]) {
        
        self.view.backgroundColor = [UIColor pinkColor];
    }
}

@end
