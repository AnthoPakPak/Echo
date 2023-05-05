Pod::Spec.new do |spec|
  spec.name             = 'Echo'
  spec.version          = '1.0.0'
  spec.summary          = 'Echo for Reflex. (Attempt at creating Cocoapods support)'
  spec.license          = { :type => 'BSD', :file => 'LICENSE' }

  spec.author           = { 'Alejandro Alonso' => 'none@me.com' }
  spec.homepage         = 'https://github.com/AnthoPakPak/Echo'
  spec.source           = { :git => 'https://github.com/AnthoPakPak/Echo.git', :tag => '#{spec.version}' }
  
  spec.platform         = :ios, '12.0'
  spec.frameworks       = [ 'Foundation' ]
  spec.swift_version    = '5.0'
end