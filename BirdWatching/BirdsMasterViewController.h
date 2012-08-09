//
//  BirdsMasterViewController.h
//  BirdWatching
//
//  Created by workshop2 on 09-08-12.
//  Copyright (c) 2012 The Consultancy Firm. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BirdsDetailViewController;

@interface BirdsMasterViewController : UITableViewController

@property (strong, nonatomic) BirdsDetailViewController *detailViewController;

@end
