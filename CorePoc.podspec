Pod::Spec.new do |s|
  s.name             = 'CorePoc'
  s.version          = '1.0.1'
  s.summary          = 'CorePoc base library'
  s.description      = 'Library with base classes'

  s.homepage         = 'https://github.com/FelippeMatos/multi-structural-module'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'giovane_barreira@hotmail.com' => 'giovane.barreira@avanade.com' }
  s.source           = { :git => 'https://github.com/FelippeMatos/multi-structural-module.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'CorePoc/Classes/**/*.{h,m,swift}'
  
end