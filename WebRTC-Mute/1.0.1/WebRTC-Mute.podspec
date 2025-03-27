#
#  Be sure to run `pod spec lint WebRTC-Mute.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'WebRTC-Mute'
  s.version      = '1.0.1'
  s.summary      = 'a WebRTC can mute micphone,use audio-playbackmode for play'
  s.description  = <<-DESC
  play back mode
                    DESC
  s.homepage     = 'https://github.com/Doloreng/WebRTC-Mute.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'kunpenghong' => '576012206@qq.com' }
  s.source       = { :git => 'https://github.com/Doloreng/WebRTC-Mute.git', :tag => s.version }
  
  s.ios.deployment_target = '12.1'
  s.platform     = :ios, '12.1'
  s.vendored_frameworks = 'Frameworks/WebRTC.framework'
  s.source_files = 'Frameworks/WebRTC.framework/Headers/*.h'
  s.public_header_files = 'Frameworks/WebRTC.framework/Headers/*.h'
  
  s.frameworks = 'AVFoundation','AudioToolbox','CoreGraphics','CoreMedia','GLKit','UIKit','VideoToolbox'
  s.requires_arc = true
  
  # s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC'}
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LDFLAGS' => '-ObjC',
    'BITCODE_GENERATION_MODE' => 'NO'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
