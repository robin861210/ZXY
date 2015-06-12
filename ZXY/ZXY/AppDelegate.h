//
//  AppDelegate.h
//  ZXY
//
//  Created by acewill on 15/6/12.
//  Copyright (c) 2015年 MFJ_zxy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
#import "CustomNavigationController.h"
#import "DDMenuController.h"
#import "LeftViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic)DDMenuController *menuController;

- (void)enterHomeViewController;

@end

