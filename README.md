# THJAlertController

[![CI Status](http://img.shields.io/travis/Thanyaluk Jirapech-umpai/THJAlertController.svg?style=flat)](https://travis-ci.org/Thanyaluk Jirapech-umpai/THJAlertController)
[![Version](https://img.shields.io/cocoapods/v/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)
[![License](https://img.shields.io/cocoapods/l/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)
[![Platform](https://img.shields.io/cocoapods/p/THJAlertController.svg?style=flat)](http://cocoapods.org/pods/THJAlertController)

UIAlertController that displays on top of any UIViewController.

One of my task of upgrading the app to only support iOS8 and above is to get rid of UIAlertView. Since UIAlertView is build to be presented anywhere without the UIViewController because the OS treat UIAlertView as UIView and put it on top of UIWindow for us. But UIAlertController is a subclass of UIViewController. The foundation of the alert view has changed. This makes converting UIAlertView to UIAlertController tricker. Because There are some NSObject classes that  create UIAlertView and show it without any associated UIViewController. So, calling - presentViewController:animated:completion: from NSObject is imposible. I want to bring the convenience of displaying Alert anywhere back to UIAlertController. So, I have subclass the UIAlertController and add method show() to the class. This THJAlertController will create the UIWindow and UIViewController on top of our application's window. This makes Alert always display on top of our app without having to worry about which UIViewController is presenting the alert view.

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
