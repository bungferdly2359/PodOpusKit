Pod::Spec.new do |s|
  s.name     = 'OpusKit'
  s.version  = '1.0'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'OpusKit that ready to use without setup'
  s.homepage = 'https://github.com/chrisballinger/OpusKit'
  s.author   = { 'chrisballinger' => 'chris@chatsecure.org' }
  s.source   = { :git => 'https://github.com/chrisballinger/OpusKit', :tag => "#{s.version}" }
  s.requires_arc = true
  s.platform     = :ios, "6.0"
  s.preserve_paths = 'README*'
  s.default_subspec = 'Core'
  s.frameworks = 'AVFoundation'

  s.subspec 'Core' do |core|
    core.source_files = 'OpusKit/OpusKit/*.{h,m}'
    core.public_header_files = 'OpusKit/OpusKit/*.h'
  end

  s.subspec 'Opus-iOS' do |opusLib|
    opusLib.source_files = 'OpusLib/include/opus/*.h'
    opusLib.preserve_paths = 'OpusLib/lib/libopus.a'
    opusLib.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/OpusLib/lib' }    
  end
  
end
