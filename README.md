# THJAlertController

[![Version](https://img.shields.io/cocoapods/v/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)
[![License](https://img.shields.io/cocoapods/l/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)
[![Platform](https://img.shields.io/cocoapods/p/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)

UIAlertController that displays on top of any UIViewController.

Moving away from UIAlertView to UIAlertController is not fun because the fundamental of UIAlertView and UIAlertController is so different. iOS treats UIAlertView as a subclass of UIView and put it on top of UIWindow for us. UIAlertController is now a subclass of UIViewController. To present the alert, we need to call `- presentViewController:animated:completion:` from the UIViewController.

Since legacy codes does not always present UIAlertView inside the UIViewController (ie. some singleton classes dealing with location service, etc.) So, I need a UIAlertController that could display anywhere on top of the app like UIAlertView used to do. 

So, I looked around and found https://github.com/dbettermann/DBAlertController which is what I want. The only problem is I need objective-c version. So, I created THJAlertController which is a subclass of UIAlertController create a new UIWindow and UIViewController on top of the current UIWindow.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

THJAlertController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "THJAlertController"
```

## Author

Thanyaluk Jirapech-umpai

## License

THJAlertController is available under the MIT license. See the LICENSE file for more info.
