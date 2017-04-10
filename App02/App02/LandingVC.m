//
//  LandingVC.m
//  App02
//
//  Created by 杨振 on 2016/11/2.
//  Copyright © 2016年 yangzhen5352. All rights reserved.
//

#import "LandingVC.h"

@interface LandingVC ()

@end

@implementation LandingVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)goBack:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@://fromLandingToQQ", self.scheme]];
    [[UIApplication sharedApplication] openURL:url];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
