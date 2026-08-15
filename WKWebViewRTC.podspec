#
# Be sure to run `pod lib lint WKWebViewRTC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WKWebViewRTC'
  s.version          = '0.4.1'
  s.summary          = 'WebRTC library for WKWebView for Swift on iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
	WebRTC library for WKWebView for Swift on iOS (based on cordova-plugin-iosrtc: https://github.com/cordova-rtc/cordova-plugin-iosrtc)
                       DESC

  s.homepage         = 'https://github.com/OpenTelecom/WKWebViewRTC'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'OpenTelecom' => 'contact@OpenTele.com' }
  s.source           = { :git => 'https://github.com/OpenTelecom/WKWebViewRTC.git', :tag => s.version.to_s }

	s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'WKWebViewRTC/Classes/**/*'
	s.resources = 'WKWebViewRTC/Js/jsWKWebViewRTC.js'

   # GoogleWebRTC is abandoned (last release 2019) and ships no arm64 simulator
   # slice, which breaks every simulator build on Apple Silicon. WebRTC-lib is
   # the community distribution of the official WebRTC binaries as an
   # xcframework, with an ios-arm64_x86_64-simulator slice.
   s.dependency 'WebRTC-lib', '~> 151.0'

   s.xcconfig       = { 'ENABLE_BITCODE' => 'NO' }
end
