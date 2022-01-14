Pod::Spec.new do |s|
  s.name             = 'Core'
  s.version          = '0.1.0'
  s.summary          = 'Core base library'
  s.description      = 'Library with base classes'

  s.homepage         = 'https://github.com/giovane_barreira@hotmail.com/Core'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'giovane_barreira@hotmail.com' => 'giovane.barreira@avanade.com' }
  s.source           = { :git => 'https://github.com/giovane_barreira@hotmail.com/Core.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = '../Core/**/*.{swift}'
  
  # s.resource_bundles = {
  #   'Core' => ['Core/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end