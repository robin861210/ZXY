//
//  MainViewController.h
//  ZXY
//
//  Created by acewill on 15/6/12.
//  Copyright (c) 2015年 MFJ_zxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarView.h"
#import "HomeView.h"
#import "KanZXView.h"
#import "XueZXView.h"

@interface MainViewController : UIViewController<TabBarViewDelegate,HomeDelegate>
{
    UIView *tmpView;
    TabBarView *tabBarView;
    NSArray *tabArray;
    
    HomeView *homeView;
    KanZXView *kanZXView;
    XueZXView *xueZXView;
    
    NSInteger switchIndex;
}


@end
