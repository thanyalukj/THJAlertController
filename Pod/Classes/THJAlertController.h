//
// THJAlertController.h
//
// FanDuel
//
// Created by Thanyaluk on 18/08/15.
// Copyright (c) 2015 Kotikan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface THJAlertController : UIAlertController

+ (instancetype)THJAlertControllerWithTitle:(NSString *)title
                                    message:(NSString *)message
                             preferredStyle:(UIAlertControllerStyle)preferredStyle;

+ (instancetype)THJAlertControllerWithTitle:(NSString *)title
                                    message:(NSString *)message
                             preferredStyle:(UIAlertControllerStyle)preferredStyle
                                alertWindow:(UIWindow *)alertWindow;
- (void)show;

@end