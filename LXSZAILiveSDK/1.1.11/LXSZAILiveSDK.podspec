#
# Be sure to run `pod lib lint LXSZAILiveSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LXSZAILiveSDK'
  s.version          = '1.1.11'
  s.summary          = 'A short description of LXSZAILiveSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Doloreng/LXSZAILiveSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Doloreng' => '576012206@qq.com' }
  s.source           = { :git => 'https://github.com/Doloreng/LXSZAILiveSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.1'
  s.platform     = :ios, '12.1'
  s.vendored_frameworks = 'LXSZAILiveSDK/Frameworks/LXSZAILiveKit.framework'
  s.source_files = 'LXSZAILiveSDK/Frameworks/LXSZAILiveKit.framework/Headers/*.h'
  s.public_header_files = 'LXSZAILiveSDK/Frameworks/LXSZAILiveKit.framework/Headers/*.h'

  s.frameworks = 'AVFoundation','AudioToolbox','CoreGraphics','CoreMedia','GLKit','UIKit','VideoToolbox'
  s.requires_arc = true
  s.libraries = 'c++'
  s.resource_bundles = {
      'LXSZAILiveSDK' => ['LXSZAILiveSDK/Frameworks/LXSZAILiveKit.framework/*.bundle']
  }
  
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LDFLAGS' => '-ObjC',
    'BITCODE_GENERATION_MODE' => 'NO'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'AFNetworking', '~> 4.0.1'
  s.dependency 'Aspects', '~> 1.4.1'
  s.dependency 'ASValueTrackingSlider', '~> 0.12.1'
  s.dependency 'CocoaAsyncSocket', '~> 7.6.5'
  s.dependency 'CocoaLumberjack', '~> 3.9.0'
  s.dependency 'GGWkCookie', '~> 1.0.0'
  s.dependency 'HWPanModal', '~> 0.9.9'
  s.dependency 'IQKeyboardManager', '~> 6.5.19'
  s.dependency 'JXCategoryView', '~> 1.6.8'
  s.dependency 'lottie-ios_Oc', '~> 0.0.1'
  s.dependency 'SDWebImage', '~> 5.21.5'
  s.dependency 'MJRefresh', '~> 3.7.9'
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'MMKV', '~> 2.0.2'
  s.dependency 'YYModel', '~> 1.0.4'
  s.dependency 'QCloudCOSXML', '~> 6.5.1'
  s.dependency 'QCloudCore', '~> 6.5.1'
  s.dependency 'KTVHTTPCache', '~> 3.1.0'
  s.dependency 'SJVideoPlayer', '~> 3.4.3'
  s.dependency 'ffmpeg-kit-ios-full-gpl-lingxi', '~> 6.0.1'
  s.dependency 'UMCommon', '~> 7.5.6'
  s.dependency 'UMDevice', '~> 3.4.0'
  s.dependency 'UMAPM', '~> 2.0.7'
  s.dependency 'SAMKeychain', '~> 1.5.3'
  s.dependency 'WebRTC-Mute', '~> 1.0.1'
  s.dependency 'RegexKitLite-NoWarning', '~> 1.1.0'
  s.dependency 'TencentCloudLogProducer', '~>1.1.5'
  s.dependency 'QCloudTrack/Cls', '~> 6.5.1'
  s.dependency 'MBProgressHUD', '~> 1.2.0'
end
