require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :git => "https://github.com/charlielizy/ffmpeg-kit-react-native-local.git", :tag => "react.native.v#{s.version}" }

  s.default_subspec   = 'core'

  s.dependency "React-Core"

  s.subspec 'core' do |ss|
    ss.source_files = '**/FFmpegKitReactNativeModule.{h,m}'
    ss.ios.deployment_target = '12.1'
  end
end
