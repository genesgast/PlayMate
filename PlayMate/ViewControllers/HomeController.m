//
//  HomeController.m
//  PlayMate
//
//  Created by Sam Christian Lee on 10/27/14.
//  Copyright (c) 2014 Baka Kyoudai. All rights reserved.
//

#import "HomeController.h"
#import "MapController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"HomeToMap"]) {
        if ([segue.destinationViewController isKindOfClass:[MapController class]]) {
            MapController *mapVC = (MapController *)segue.destinationViewController;
            mapVC.place = @"Auckland";
        }
    }
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"Test"]) {
        return NO;
    }
    return YES;
}

@end
