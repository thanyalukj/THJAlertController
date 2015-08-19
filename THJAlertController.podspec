#
# Be sure to run `pod lib lint THJAlertController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "THJAlertController"
  s.version          = "0.1.0"
  s.summary          = "A UIAlertController that display on without the need of view controller."

  s.description  = <<-DESC
                    A subclass of UIAlertController that create its own UIWindow and rootViewController on top of the app UIWindow. So, the alert could be presented in the app wihout specifying the parent UIViewController to present one.
                    DESC
  s.homepage         = "https://github.com/thanyalukj/THJAlertController"
  s.license          = 'MIT'
  s.author           = { "Thanyaluk Jirapech-umpai" => "thanyalukj@gmail.com" }
  s.source           = { :git => "https://github.com/thanyalukj/THJAlertController.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
