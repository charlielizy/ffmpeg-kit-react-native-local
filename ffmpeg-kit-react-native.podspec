require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"] || "React Native wrapper for FFmpegKit"
  s.homepage     = package["homepage"] || "https://github.com/arthenica/ffmpeg-kit"
  s.license      = package["license"] || "MIT"
  s.authors      = package["author"] || { "Your Name" => "you@example.com" }

  s.platform          = :ios, "12.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :git => "https://github.com/charlielizy/ffmpeg-kit-react-native-local.git", :tag => "react.native.v#{s.version}" }

  s.source_files = "**/FFmpegKitReactNativeModule.{h,m}"

  s.dependency "ffmpeg-kit-ios-full-gpl"
  s.dependency "React-Core"
end
