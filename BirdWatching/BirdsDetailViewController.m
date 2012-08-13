//
//  BirdsDetailViewController.m
//  BirdWatching
//
//  Created by workshop2 on 09-08-12.
//  Copyright (c) 2012 The Consultancy Firm. All rights reserved.
//

#import "BirdsDetailViewController.h"
#import "BirdSighting.h"

@interface BirdsDetailViewController ()
- (void)configureView;
@end

@implementation BirdsDetailViewController

#pragma mark - Managing the detail item

- (void) setSighting:(BirdSighting *) newSighting {
    if (_sighting != newSighting) {
        _sighting = newSighting;
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item
    BirdSighting *theSighting = self.sighting;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if(theSighting) {
        self.birdNameLabel.text = theSighting.name;
        self.locationLabel.text = theSighting.location;
        self.dateLabel.text = [formatter stringFromDate: theSighting.date];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
