//
// THJModalViewController.m
//
// THJAlertController
//
// Created by Thanyaluk on 18/08/15.
// Copyright (c) 2015 Thanyaluk Jirapech-umpai. All rights reserved.
//

#import <THJAlertController/THJAlertController.h>
#import "THJModalViewController.h"


@implementation THJModalViewController {

}

- (IBAction)displayAlert:(id)sender {
    THJAlertController *alertController = [THJAlertController THJAlertControllerWithTitle:@"hello"
                                                                                  message:@"This alert view is display on top of the UIWindow"
                                                                           preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:okAction];
    [alertController show];
}

- (IBAction)dismissModal:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)scheduleAlertAndDismiss:(id)sender {
    [self performSelector:@selector(displayAlert:) withObject:self afterDelay:0.2];
    [self dismissModal:nil];
}

@end