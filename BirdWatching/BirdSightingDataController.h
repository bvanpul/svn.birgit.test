//
//  BirdSightingDataController.h
//  BirdWatching
//
//  Created by workshop2 on 09-08-12.
//  Copyright (c) 2012 The Consultancy Firm. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BirdSighting;

@interface BirdSightingDataController : NSObject

@property (nonatomic, copy) NSMutableArray *masterBirdSightingList;

- (NSUInteger) countOfList;
- (BirdSighting *) objectInListAtIndex: (NSInteger) theIndex;
- (void) addBirdSightingWithName: (NSString *) inputBirdName location: (NSString *) inputLocation;

@end
