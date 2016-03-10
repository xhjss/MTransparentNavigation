//
//  MViewController.m
//  MTransparentNavigation
//
//  Created by 肖会军 on 16/3/8.
//  Copyright © 2016年 肖会军. All rights reserved.
//

#import "MViewController.h"
#import "UIImage+fixOrientation.h"
#import <SDWebImageManager.h>

@interface MViewController ()

@end

@implementation MViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tabBarController.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]] forBarMetrics:UIBarMetricsDefault];
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
