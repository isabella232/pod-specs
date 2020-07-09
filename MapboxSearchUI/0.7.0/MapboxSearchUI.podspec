Pod::Spec.new do |s|
  s.name             = 'MapboxSearchUI'
  s.version          = '0.7.0'
  s.summary          = 'Search UI for Mapbox Search API'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Card style custom UI with full search functionality powered by Mapbox Search API.
                        DESC

  s.homepage         = 'https://www.mapbox.com/search/'
  s.license          = "Mapbox TOS"
  s.author           = { 'Mapbox' => 'mobile@mapbox.com'  }
  s.source           = { :http => "https://api.mapbox.com/downloads/v2/search-sdk/releases/ios/packages/#{s.version.to_s}/#{s.name}.xcframework.zip" }

  s.ios.deployment_target = '11.0'
  s.swift_versions = [5.2]

  s.vendored_frameworks = "**/#{s.name}.xcframework"
  s.preserve_paths = "**/*.dSYMs"

  s.dependency 'MapboxSearch', "~> 0.7.0"
end
