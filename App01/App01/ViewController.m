//
//  ViewController.m
//  App01
//
//  Created by 杨振 on 2016/11/2.
//  Copyright © 2016年 yangzhen5352. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)gotoApp02Landing:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"App02://landingFrom:App01"];
    [[UIApplication sharedApplication] openURL:url options:@{@"landing" : @"123"} completionHandler:^(BOOL success) {
        NSLog(@"gotoApp02Landing");
    }];
}
- (IBAction)gotoApp02Login:(UIButton *)sender {
    
    NSURL *url = [NSURL URLWithString:@"App02://loginFrom:App01"];
    [[UIApplication sharedApplication] openURL:url options:@{@"login" : @"456"} completionHandler:^(BOOL success) {
        NSLog(@"gotoApp02Landing");
    }];
}

@end
