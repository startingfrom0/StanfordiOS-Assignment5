//
//  RecentlyViewedTVC.m
//  CS193P Assignment 5 - Top Places
//
//  Created by Alex Smith on 9/05/2015.
//  Copyright (c) 2015 Alex Smith. All rights reserved.
//

#import "RecentlyViewedTVC.h"
#import "RecentlyViewedPhotos.h"

@implementation RecentlyViewedTVC

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self downloadDataAndRefreshUI];
}

-(NSDictionary *)dictionaryFromFlickrData
{
    return @{@"Recent Photos" : [[RecentlyViewedPhotos recentPhotos] recentPhotosArray]};
}

@end
