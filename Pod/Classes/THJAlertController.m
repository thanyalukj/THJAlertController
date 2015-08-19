//
// THJAlertController.m
//
// FanDuel
//
// Created by Thanyaluk on 18/08/15.
// Copyright (c) 2015 Kotikan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "THJAlertController.h"

@interface THJAlertController ()
@property (nonatomic) UIWindow *alertWindow;
@end

@implementation THJAlertController

+ (instancetype)THJAlertControllerWithTitle:(NSString *)title
                                    message:(NSString *)message
                             preferredStyle:(UIAlertControllerStyle)preferredStyle {
    return [THJAlertController THJAlertControllerWithTitle:title
                                                   message:message
                                            preferredStyle:preferredStyle
                                               alertWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
}

+ (instancetype)THJAlertControllerWithTitle:(NSString *)title
                                    message:(NSString *)message
                             preferredStyle:(UIAlertControllerStyle)preferredStyle
                                alertWindow:(UIWindow *)alertWindow {
    THJAlertController *fdlAlertController = [self alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    alertWindow.rootViewController = [[UIViewController alloc] init];
    alertWindow.windowLevel = UIWindowLevelAlert + 1;
    fdlAlertController.alertWindow = alertWindow;
    return fdlAlertController;
}

- (void)show {
    NSAssert(self.alertWindow, @"To use show(), create THJAlertController with THJAlertControllerWithTitle:message:preferredStyle");
    [self.alertWindow makeKeyAndVisible];
    [self.alertWindow.rootViewController presentViewController:self animated:YES completion:nil];
}

@end