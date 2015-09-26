//
//  FourSqTVC.m
//  KPgoLoco
//
//  Created by MacMan on 9/25/15.
//  Copyright © 2015 MacManApp. All rights reserved.
//
#import "FourSqTVC.h"
#import "FourSqPost.h"
#import "FourSqAPImanager.h"
#import "FourSqPostTableViewCell.h"


#import "FourSqTVC.h"

@interface FourSqTVC ()
@property (nonatomic) NSMutableArray *searchResults;
@end

@implementation FourSqTVC

- (void)fetchInstagramData {
    
    // create an instagram url
    NSURL *fourSqURL = [NSURL URLWithString:@"https://api.instagram.com/v1/tags/nofilter/media/recent?client_id=ac0ee52ebb154199bfabfb15b498c067"];
    
    // fetch data from the instagram endpoint and print json response
    [FourSqAPImanager GETRequestWithURL:fourSqURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        NSArray *results = json[@"data"];
        
        // reset my array
        self.searchResults = [[NSMutableArray alloc] init];
        
        // loop through all json posts
        for (NSDictionary *result in results) {
            
            // create new post from json
            FourSqPost*post = [[FourSqPost alloc] initWithJSON:result];
            
            // add post to array
            [self.searchResults addObject:post];
        }
        
        [self.tableView reloadData];
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchInstagramData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.searchResults.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FourSqPostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InstagramCellIdentifier" forIndexPath:indexPath];
    
    FourSqPost *post = self.searchResults[indexPath.row];
    
    cell.usernameLabel.text = [NSString stringWithFormat:@"@%@",post.username];
    
    cell.likeCountLabel.text = [NSString stringWithFormat:@"Like: %ld", post.likeCount];
    
    cell.tagCountLabel.text = [NSString stringWithFormat:@"Tags: %ld", post.tags.count];
    
    cell.captionLabel.text = post.caption[@"text"];
    
    return cell;
}


@end
















