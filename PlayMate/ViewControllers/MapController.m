//
//  MapController.m
//  PlayMate
//
//  Created by Sam Christian Lee on 10/27/14.
//  Copyright (c) 2014 Baka Kyoudai. All rights reserved.
//

#import "MapController.h"

@interface MapController ()

@end

@implementation MapController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setPlace:(NSString *)place
{
    _place = place;
    if (self.view.window) {
        [self updateUI];
    }
}

-(void)testing
{
    NSAttributedString *textToAnalyze = @"";
    NSRange range;
    [textToAnalyze attribute:@"" atIndex:0 effectiveRange:&range];
}

- (void)updateUI
{
    
}

- (void)viewWillAppear:(BOOL)animated
{
    // in case outlets are not set yet; let viewWillAppear take care of it
    [super viewWillAppear:animated];
    [self updateUI];
}

@end
