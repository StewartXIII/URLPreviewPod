#
# Be sure to run `pod lib lint URLPreviewPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'URLPreviewPod'
  s.version          = '1.0.3'
  s.summary          = 'Display url preview'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       This framework is for displaying preview of URL
                       DESC

  s.homepage         = 'https://github.com/StewartXIII/URLPreview'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Stewart' => 'rulerxiii@gmail.com' }
  s.source           = { :git => 'https://github.com/StewartXIII/URLPreview.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.frameworks = 'SafariServices'
  s.vendored_frameworks = 'URLPreviewPod/Frameworks/*.framework'
  s.libraries  = 'xml2'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '/usr/include/libxml2' }
end