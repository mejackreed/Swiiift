#
# Be sure to run `pod lib lint Swiiift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Swiiift'
  s.version          = '0.1.0'
  s.summary          = 'A IIIF library for Swift'
  s.description      = 'A IIIF library for Swift.'
  s.homepage         = 'https://github.com/mejackreed/Swiiift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jack Reed' => 'phillipjreed@gmail.com' }
  s.source           = { :git => 'https://github.com/mejackreed/Swiiift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mejackreed'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.source_files = 'Swiiift/Classes/**/*'
  s.dependency 'Alamofire', '~> 4.5'
  s.dependency 'SwiftyJSON'
end
