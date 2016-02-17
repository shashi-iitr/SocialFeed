//
//  SocialFeedTableViewCell.m
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import "SocialFeedTableViewCell.h"

@interface SocialFeedTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *actorProfileImageView;
@property (weak, nonatomic) IBOutlet UILabel *actorNameLabel;
@property (weak, nonatomic) IBOutlet UIButton *followButton;
@property (weak, nonatomic) IBOutlet UILabel *createdOnLabel;
@property (weak, nonatomic) IBOutlet UILabel *feedTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *feedDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *likeLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@end

@implementation SocialFeedTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (IBAction)didTapFollowButton:(UIButton *)sender {
}

+ (NSString *)reusedIdentifier {
    return NSStringFromClass([self class]);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
