//
//  SocialFeed.h
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import <Mantle/Mantle.h>

//"": "Mother, actor, entrepreneur, fitness enthusiast and an eternal positive thinker",
//"": "238bb4ca-606d-4817-afad-78bee2898264",
//"": "Shilpa shetty kundra ",
//"followers": 35215,
//"following": 5,
//"": "http://img.ropose.com/userImages/13632253306661657730401415143533525274225757_circle.png",
//"": "http://www.roposo.com/profile/shilpa-shetty-kundra-/238bb4ca-606d-4817-afad-78bee2898264",
//"": "@shilpashettykundra",
//"is_following": false,
//"createdOn": 1439530320545

@interface SocialFeed : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly, copy) NSString *about;
@property (nonatomic, readonly, copy) NSString *identifier;
@property (nonatomic, readonly, copy) NSString *userName;
@property (nonatomic, readonly, copy) NSString *imageURL;
@property (nonatomic, readonly, copy) NSString *detailURL;
@property (nonatomic, readonly, copy) NSString *handle;
@property (nonatomic, readonly, copy) NSString *type;
@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, copy) NSString *feedDesc;
@property (nonatomic, readonly, copy) NSString *verb;
@property (nonatomic, readonly, copy) NSString *db;
@property (nonatomic, readonly, copy) NSString *si;
@property (nonatomic, readonly, assign) NSInteger createdON;
@property (nonatomic, assign) NSInteger likeCount;
@property (nonatomic, assign) NSInteger commentCount;
@property (nonatomic, assign) NSInteger followers;
@property (nonatomic, assign) NSInteger following;
@property (nonatomic, assign) BOOL isFollowing;
@property (nonatomic, assign) BOOL isLiked;
@end
