//
//  LeftViewController.m
//  ZXY
//
//  Created by acewill on 15/6/12.
//  Copyright (c) 2015年 MFJ_zxy. All rights reserved.
//

#import "LeftViewController.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor orangeColor]];
    
    [self customView];
}

- (void)customView
{
    listTableV = [[UITableView alloc] initWithFrame:CGRectMake(0, 50, 150, ScreenHeight-80) style:UITableViewStylePlain];
    [listTableV setBackgroundColor:[UIColor blueColor]];
    [listTableV setShowsHorizontalScrollIndicator:NO];
    listTableV.delegate = self;
    listTableV.dataSource = self;
    [listTableV setSeparatorColor:[UIColor clearColor]];
    [self.view addSubview:listTableV];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *leftCell = @"listCell";
    
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    DDMenuController *menuController = (DDMenuController *)((AppDelegate *)[[UIApplication sharedApplication] delegate]).menuController;
    
//    RootViewController *selectViewController = [[RootViewController alloc] init];
    
//    LeftMenuInfoBean *bean = [leftInfoArray objectAtIndex:indexPath.row];
//    [selectViewController setTitle:bean.hotName];
//    [selectViewController initRootTableViewData:bean.hotId];
//    
//    CustomNavigationController *navController = [[CustomNavigationController alloc] initWithRootViewController:selectViewController];
//    [navController setToolbarHidden:NO animated:YES];
//    
//    [menuController setRootController:navController animated:YES];
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
