//
//  SocialFeedTableViewCell.m
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import "SocialFeedTableViewCell.h"
#import "UIImageView+AFNetworking.h"

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

- (void)configureWithFeed:(SocialFeed *)feed {
    self.actorNameLabel.text = feed.userName ? [feed.userName capitalizedString] : @"Anonymous";
    self.feedTitleLabel.text = feed.title;
    if (feed.type && [[feed.type lowercaseString] isEqualToString:@"story"]) {
        self.createdOnLabel.text = feed.verb;
        self.feedDescriptionLabel.text = feed.feedDesc;
        [self.actorProfileImageView setImageWithURL:[NSURL URLWithString:feed.si] placeholderImage:[UIImage imageNamed:@"tutor_placeholder"]];
        self.likeLabel.text = [NSString stringWithFormat:@"%ld likes", (long)feed.likeCount];
        self.commentLabel.text = [NSString stringWithFormat:@"%ld comments", (long)feed.commentCount];
    } else {
        self.feedDescriptionLabel.text = feed.about;
        [self.actorProfileImageView setImageWithURL:[NSURL URLWithString:feed.imageURL] placeholderImage:[UIImage imageNamed:@"tutor_placeholder"]];
        self.likeLabel.text = [NSString stringWithFormat:@"%ld followers", (long)feed.followers];
        self.commentLabel.text = [NSString stringWithFormat:@"%ld followings", (long)feed.following];
    }
    
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
