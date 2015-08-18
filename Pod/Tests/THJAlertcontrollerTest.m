//
//  THJAlertcontrollerTest.m
//  THJAlertController
//
//  Created by Thanyaluk on 18/08/15.
//
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "OCMockObject.h"
#import "OCMArg.h"
#import "THJAlertController.h"
#import "OCMStubRecorder.h"

@interface THJAlertcontrollerTest : XCTestCase

@end

@implementation THJAlertcontrollerTest {
    OCMockObject *_mockWindow;
    OCMockObject *_mockRootViewController;
}

- (void)setUp {
    [super setUp];
    _mockWindow = [OCMockObject niceMockForClass:[UIWindow class]];
    _mockRootViewController = [OCMockObject niceMockForClass:[UIViewController class]];
}

- (void)test_creation_expectWindowSetRootViewController {
    [[_mockWindow expect] setRootViewController:[OCMArg checkWithBlock:^BOOL(id obj) {
        return [obj isKindOfClass:[UIViewController class]];
    }]];
    (void) [THJAlertController THJAlertControllerWithTitle:@"title"
                                                   message:@"message"
                                            preferredStyle:UIAlertControllerStyleAlert
                                               alertWindow:(id) _mockWindow];
    [_mockWindow verify];
}

- (void)test_creation_expectWindowSetWindowLevelToBeHigherThanWindowAlertLevel {
    [[_mockWindow expect] setWindowLevel:UIWindowLevelAlert + 1];
    (void) [THJAlertController THJAlertControllerWithTitle:@"title"
                                                   message:@"message"
                                            preferredStyle:UIAlertControllerStyleAlert
                                               alertWindow:(id) _mockWindow];
    [_mockWindow verify];
}

- (void)test_show_expectRootViewControllerToPresentAlert {
    [[[_mockWindow stub] andReturn:_mockRootViewController] rootViewController];
    THJAlertController *sut = [THJAlertController THJAlertControllerWithTitle:@"title"
                                                                      message:@"message"
                                                               preferredStyle:UIAlertControllerStyleAlert
                                                                  alertWindow:(id) _mockWindow];

    [[_mockRootViewController expect] presentViewController:sut animated:YES completion:OCMOCK_ANY];

    [sut show];

    [_mockRootViewController verify];
}

@end