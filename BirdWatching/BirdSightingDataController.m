//
//  BirdSightingDataController.m
//  BirdWatching
//
//  Created by workshop2 on 09-08-12.
//  Copyright (c) 2012 The Consultancy Firm. All rights reserved.
//

#import "BirdSightingDataController.h"
#import "BirdSighting.h"

@interface BirdSightingDataController()
- (void) initializeDefaultDataList;
@end

@implementation BirdSightingDataController

- (id) init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
    }
    return self;
}

- (void) initializeDefaultDataList {
    NSMutableArray *sightingList = [[NSMutableArray alloc] init];
    [NSLocale autoupdatingCurrentLocale];
    
    NSString *identifier = [[NSLocale currentLocale] localeIdentifier];
    NSString *birdName = NSLocalizedString(@"DefaultBirdName", @"Default Bird name");
    NSString *location = NSLocalizedString(@"DefaultLocation", @"Default Location");
    
    self.masterBirdSightingList = sightingList;
    [self addBirdSightingWithName:birdName  location:location];
}

- (void) setMasterBirdSightingList:(NSMutableArray *)newList {
    if (_masterBirdSightingList != newList) {
        _masterBirdSightingList = [newList mutableCopy];
    }
}

- (NSUInteger) countOfList {
    return [self.masterBirdSightingList count];
}

- (BirdSighting *) objectInListAtIndex:(NSInteger)theIndex  {
    return [self.masterBirdSightingList objectAtIndex:theIndex];
}

- (void) addBirdSightingWithName:(NSString *)inputBirdName location:(NSString *)inputLocation {
    BirdSighting *sighting;
    NSDate *today = [NSDate date];
    sighting = [[BirdSighting alloc] initWithName:inputBirdName location:inputLocation date:today];
    [self.masterBirdSightingList addObject:sighting];
}

@end
