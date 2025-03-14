#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint allinonesdk.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'paytm_allinonesdk'
  s.version          = '1.2.8'
  s.summary          = 'Paytm All in one sdk plugin.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://developer.paytm.com/docs/all-in-one-sdk/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  s.preserve_paths = 'AppInvokeSDK.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework AppInvokeSDK' }
  s.vendored_frameworks = 'AppInvokeSDK.xcframework'
  
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
