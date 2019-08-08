require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNTVOSController"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/respectTheCode/react-native-tvos-controller"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/respectTheCode/react-native-tvos-controller.git', :tag => "v#{s.version}" }
  s.default_subspec     = 'Default'
  s.requires_arc        = true
  
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"

  s.dependency 'React-Core'
  
  s.subspec 'Default' do |ss|
    ss.source_files     = "ios/**/*.{h,m}"
  end

end
