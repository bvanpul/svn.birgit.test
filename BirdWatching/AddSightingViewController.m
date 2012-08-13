//
//  AddSightingViewController.m
//  BirdWatching
//
//  Created by workshop2 on 09-08-12.
//  Copyright (c) 2012 The Consultancy Firm. All rights reserved.
//

#import "AddSightingViewController.h"

@interface AddSightingViewController ()

@end

@implementation AddSightingViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (IBAction)cancel:(id)sender {
    [[self delegate] addSightingViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    [[self delegate] addSightingViewControllerDidFinish:self name:self.birdNameInput.text location:self.locationInput.text];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.birdNameInput) || (textField == self.locationInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
