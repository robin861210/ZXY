//
//  MainViewController.m
//  ZXY
//
//  Created by acewill on 15/6/12.
//  Copyright (c) 2015年 MFJ_zxy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(push:) name:@"pushToFunctionVC" object:nil];
    
    tmpView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-50*ScreenHeight/568)];
    [self.view addSubview:tmpView];
    
    CGRect subViewFrame = CGRectMake(0, 0, ScreenWidth, ScreenHeight-50*ScreenHeight/568);
    homeView = [[HomeView alloc] initWithFrame:subViewFrame];
//    [homeView setDelegate:self];
    
    [tmpView addSubview:homeView];
    
    //初始化下方工具栏
    tabArray = @[@"首页",@"看装修",@"在线沟通",@"学装修"];
    NSArray *tabImgNorArray = @[@"home@2x",@"k_zx@2x",@"tack@2x",@"x_zx@2x"];
    NSArray *tabImgSelArray = @[@"homeed@2x",@"k_zxed@2x",@"tacked@2x",@"x_zxed@2x"];
    tabBarView = [[TabBarView alloc] initWithFrame:CGRectMake(0, ScreenHeight-50*ScreenHeight/568, ScreenWidth, 50*ScreenHeight/568) tabBarInfo:tabArray normalImageArr:tabImgNorArray selectImageArr:tabImgSelArray];
    tabBarView.layer.borderWidth = 0.5f;
    tabBarView.layer.borderColor = [[UIColor grayColor] CGColor];
    [tabBarView setBackgroundColor:[UIColor whiteColor]];
    tabBarView.delegate = self;
    [self.view addSubview:tabBarView];
}

#pragma mark -
#pragma mark TabBarViewDelegate
- (void)selectTabBarItem:(NSString *)itemIndex
{
    NSInteger index = itemIndex.intValue - 10;
    [self cleanTmpViewSubviews];
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:logOutBtn];
    
    switch (index) {
        case 0:
            [tmpView addSubview:homeView];
//            [logOutBtn setHidden:YES];
            break;
        case 1:
//            [tmpView addSubview:activityView];
//            [activityView updateViewInfo:0 Num:0];
//            [logOutBtn setHidden:YES];
            break;
        case 2:
//            [tmpView addSubview:chatListView];
//            [logOutBtn setHidden:NO];
//            self.navigationItem.rightBarButtonItem = contactsItem;
            break;
        case 3:
//            [tmpView addSubview:progressSearchView];
//            [progressSearchView setProgressBaseInfo];
//            [logOutBtn setHidden:YES];
            break;
        case 4:
//            [tmpView addSubview:personCenterView];
//            if ([[UserInfoUtils sharedUserInfoUtils] isEmpty]) {
//                [logOutBtn setHidden:YES];
//            }else
//            {
//                [logOutBtn setHidden:NO];
//            }
            break;
        default:
            break;
    }
    self.title = [tabArray objectAtIndex:index];
    switchIndex = index;
    
}

- (void) cleanTmpViewSubviews
{
    for (int i = 0; i < [[tmpView subviews] count]; i++) {
        [[[tmpView subviews] objectAtIndex:i] removeFromSuperview];
    }
}


#pragma mark -
#pragma mark HomeView Delegate
- (void)selectHomeADItem:(NSString *)ad_Info {
    
}


//通知方法
- (void)push:(NSNotification *)notification{
    NSLog(@"%@",[notification.userInfo objectForKey:@"viewC"]);
    NSLog(@"－－－－－接收到通知------");
    [self.navigationController pushViewController:[notification.userInfo objectForKey:@"viewC"] animated:YES];
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
