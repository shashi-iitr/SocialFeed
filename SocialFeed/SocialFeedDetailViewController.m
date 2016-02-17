//
//  SocialFeedDetailViewController.m
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import "SocialFeedDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface SocialFeedDetailViewController () <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *authorNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *createdOnLabel;
@property (weak, nonatomic) IBOutlet UIButton *followButton;
@property (weak, nonatomic) IBOutlet UIImageView *authorImageView;
@property (nonatomic, strong) SocialFeed *feed;
@property (weak, nonatomic) IBOutlet UILabel *likeLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *feedTitleLabel;
@end

@implementation SocialFeedDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:[NSURL URLWithString:_feed.detailURL]];
    [self.webView loadRequest:requestObj];

}

- (void)setSocialFeed:(SocialFeed *)feed {
    _feed = feed;

    self.authorNameLabel.text = feed.userName ? [feed.userName capitalizedString] : @"Anonymous";
    self.feedTitleLabel.text = feed.title;
    if (feed.type && [[feed.type lowercaseString] isEqualToString:@"story"]) {
        self.createdOnLabel.text = feed.verb;
        [self.authorImageView setImageWithURL:[NSURL URLWithString:feed.si] placeholderImage:[UIImage imageNamed:@"tutor_placeholder"]];
        self.likeLabel.text = [NSString stringWithFormat:@"%ld likes", (long)feed.likeCount];
        self.commentLabel.text = [NSString stringWithFormat:@"%ld comments", (long)feed.commentCount];

    } else {
        [self.authorImageView setImageWithURL:[NSURL URLWithString:feed.imageURL] placeholderImage:[UIImage imageNamed:@"tutor_placeholder"]];
        self.likeLabel.text = [NSString stringWithFormat:@"%ld followers", (long)feed.followers];
        self.commentLabel.text = [NSString stringWithFormat:@"%ld followings", (long)feed.following];
    }
    
    
}
- (IBAction)didTapFollowButton:(UIButton *)sender {
}

#pragma mark - UIWebViewDelegate

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"err %@", error.debugDescription);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
