//
//  AreaTableViewController.m
//  PlayMate
//
//  Created by Sam Christian Lee on 10/27/14.
//  Copyright (c) 2014 Baka Kyoudai. All rights reserved.
//

#import "AreaTableViewController.h"
#import "FlickrFetcher.h"

@interface AreaTableViewController ()

@end

@implementation AreaTableViewController

- (IBAction)refresh:(id)sender {
    [self.refreshControl beginRefreshing];
    
    [self.refreshControl endRefreshing];
}

-(void)setPhotos:(NSArray *)photos
{
    _photos = photos;
    [self.tableView reloadData];
}

#pragma mark - TableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; //if not specified, default is 1
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.photos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // only grab what's present on the screen
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CourtTimeCell"
                                                            forIndexPath:indexPath];

    // configure the cell
    NSDictionary *photo = self.photos[indexPath.row];
    cell.textLabel.text = [photo valueForKeyPath:FLICKR_PHOTO_TITLE];
    cell.detailTextLabel.text = [photo valueForKeyPath:FLICKR_PHOTO_DESCRIPTION];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
