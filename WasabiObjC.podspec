#
# Be sure to run `pod lib lint WasabiObjC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WasabiObjC"
  s.version          = "1.0.0"
  s.summary          = "Objective-C Runtime Utilities"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
Objective-C Runtime Utilities; currently only includes method swizzling.
                       DESC

  s.homepage         = "https://github.com/rothmichaels/WasabiObjC"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'Apache 2.0'
  s.author           = { "Roth Michaels" => "roth@rothmichaels.us" }
  s.source           = { :git => "https://github.com/rothmichaels/WasabiObjC.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '4.0'
  s.requires_arc = true

  s.source_files = 'WasabiObjC/**/*.{h,m}'
  # s.resource_bundles = {
  #   'WasabiObjC' => ['Pod/Assets/*.png']
  # }

  s.public_header_files = 'WasabiObjC/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
