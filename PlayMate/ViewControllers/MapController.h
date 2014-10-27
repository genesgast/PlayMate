//
//  MapController.h
//  PlayMate
//
//  Created by Sam Christian Lee on 10/27/14.
//  Copyright (c) 2014 Baka Kyoudai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapController : UIViewController

@property (strong, nonatomic) NSString *place;
@property (strong, nonatomic) IBOutlet UILabel *sportsLabel;
@property (weak, nonatomic) IBOutlet UILabel *quantity;

@end
