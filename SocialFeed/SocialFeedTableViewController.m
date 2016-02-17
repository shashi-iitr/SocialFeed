//
//  SocialFeedTableViewController.m
//  SocialFeed
//
//  Created by shashi kumar on 18/02/16.
//  Copyright © 2016 Shashi. All rights reserved.
//

#import "SocialFeedTableViewController.h"
#import "SocialFeed.h"
#import "SocialFeedTableViewCell.h"
#import "SocialFeedDetailViewController.h"

@interface SocialFeedTableViewController ()
@property (nonatomic, strong) NSMutableArray *feeds;
@end

@implementation SocialFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"SocialFeedTableViewCell" bundle:nil] forCellReuseIdentifier:[SocialFeedTableViewCell reusedIdentifier]];
    self.tableView.estimatedRowHeight = 44.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self fetchFeeds];
}

- (void)fetchFeeds {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"feed" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSError *error;
    for (NSDictionary *dict in json) {
        SocialFeed *feed = [MTLJSONAdapter modelOfClass:[SocialFeed class] fromJSONDictionary:dict error:&error];
        [self.feeds addObject:feed];
    }
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.feeds.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SocialFeedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[SocialFeedTableViewCell reusedIdentifier] forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell configureWithFeed:self.feeds[indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SocialFeed *feed = self.feeds[indexPath.row];
    
    NSString *storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    SocialFeedDetailViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"SocialFeedDetailViewController"];
    [controller setSocialFeed:feed];
    
    [self.navigationController pushViewController:controller animated:YES];
    
}

- (NSMutableArray *)feeds {
    if (!_feeds) {
        _feeds = [[NSMutableArray alloc] init];
    }
    
    return _feeds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
