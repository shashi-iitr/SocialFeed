//
//  SocialFeed.m
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import "SocialFeed.h"

//"about": "Mother, actor, entrepreneur, fitness enthusiast and an eternal positive thinker",
//"id": "238bb4ca-606d-4817-afad-78bee2898264",
//"username": "Shilpa shetty kundra ",
//"followers": 35215,
//"following": 5,
//"image": "http://img.ropose.com/userImages/13632253306661657730401415143533525274225757_circle.png",
//"url": "http://www.roposo.com/profile/shilpa-shetty-kundra-/238bb4ca-606d-4817-afad-78bee2898264",
//"handle": "@shilpashettykundra",
//"is_following": false,
//"createdOn": 1439530320545

@implementation SocialFeed

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"about"       : @"about",
             @"identifier"  : @"id",
             @"userName"    : @"username",
             @"imageURL"    : @"image",
             @"detailURL"   : @"url",
             @"handle"      : @"handle",
             @"type"        : @"type",
             @"title"       : @"title",
             @"verb"        : @"verb",
             @"db"          : @"db",
             @"si"          : @"si",
             @"createdON"   : @"createdOn",
             @"likeCount"   : @"likes_count",
             @"commentCount": @"comment_count",
             @"followers"   : @"followers",
             @"following"   : @"following",
             @"isFollowing" : @"is_following",
             @"isLiked"     : @"like_flag",
             @"feedDesc"    : @"description"};
}

@end
