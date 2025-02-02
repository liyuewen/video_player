#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint video_player.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'video_player'
  s.version          = '1.0.0'
  s.summary          = 'A Video Player Flutter plugin based on TXVodPlayer'
  s.description      = <<-DESC
A Video Player Flutter plugin based on TXVodPlayer
                       DESC
  s.homepage         = 'http://www.bughub.icu:8888'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Randy Wei' => 'smile561607154@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'TXLiteAVSDK_Player', '~> 9.2.10637' #集成腾讯原生播放器
  s.static_framework = true
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

end
