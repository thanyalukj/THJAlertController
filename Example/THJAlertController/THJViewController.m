//
//  THJViewController.m
//  THJAlertController
//
//  Created by Thanyaluk Jirapech-umpai on 08/18/2015.
//  Copyright (c) 2015 Thanyaluk Jirapech-umpai. All rights reserved.
//

#import <THJAlertController/THJAlertController.h>
#import "THJViewController.h"

@interface THJViewController ()

@end

@implementation THJViewController

- (IBAction)displayAlert:(id)sender {
    THJAlertController *alertController = [THJAlertController THJAlertControllerWithTitle:@"hello"
                                                                                     message:@"This alert view is display on top of the UIWindow"
                                                                              preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:okAction];
    [alertController show];
}

- (IBAction)presentModalViewController:(id)sender {
    [self performSegueWithIdentifier:@"presentModalView" sender:self];
}

@end
