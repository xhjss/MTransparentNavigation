//
//  ViewController.m
//  MTransparentNavigation
//
//  Created by 肖会军 on 16/3/8.
//  Copyright © 2016年 肖会军. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+fixOrientation.h"
#import "SVProgressHUD.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,weak)IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
//    [SVProgressHUD showWithStatus:@"加油..."];
    
    self.title = @"111";
    self.tabBarController.title = @"222";
    
    self.tableView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    
    self.tableView.scrollIndicatorInsets = UIEdgeInsetsMake(-64, 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:self.tableView.contentOffset.y / 100]] forBarMetrics:UIBarMetricsDefault];
    
     [self.navigationController.navigationBar setShadowImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0]]];
}
-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}
-(void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]] forBarMetrics:UIBarMetricsDefault];
    
}

#pragma mark-
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIde = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIde];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIde];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld",indexPath.row];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self performSegueWithIdentifier:@"PUSH" sender:nil];
}

#pragma mark-
-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:self.tableView.contentOffset.y / 100]] forBarMetrics:UIBarMetricsDefault];
}


@end
