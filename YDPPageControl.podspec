#
# Be sure to run `pod lib lint YDPPageControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YDPPageControl'
  s.version          = '0.0.2'
  s.summary          = 'Simple PageControler'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Simple PageControler whit animation'

  s.homepage         = 'https://yudonpay.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'José Miguel Herrero' => 'jmiguel.herrero@yudonpay.com' }
  s.source           = { :git => 'https://github.com/Yudonpay/YDPPageControl.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'

  s.source_files = 'YDPPageControl/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YDPPageControl' => ['YDPPageControl/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
