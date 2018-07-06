#
# Be sure to run `pod lib lint DCInputs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCInputs'
  s.version          = '0.2.5'
  s.summary          = 'Core libraries for inputs developed by the Dev Core Team'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Core libraries for inputs developed by Dev Core Team. In here you will find InputFields with own labels and pre defined animations'

  s.homepage         = 'https://github.com/vberihuete/DCInputsLib'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vincent Berihuete' => 'vberihuete@gmail.com' }
  s.source           = { :git => 'https://github.com/vberihuete/DCInputsLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DCInputs/Classes/**/*'
  s.swift_version = '3.2'
  
  # s.resource_bundles = {
  #   'DCInputs' => ['DCInputs/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
