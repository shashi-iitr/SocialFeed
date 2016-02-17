//
//  SocialFeedTableViewCell.h
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialFeed.h"

@interface SocialFeedTableViewCell : UITableViewCell

+ (NSString *)reusedIdentifier;

- (void)configureWithFeed:(SocialFeed *)feed;

@end
