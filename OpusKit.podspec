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
  s.default_subspec = 'OpusKit'

  s.subspec 'Core' do |core|
    core.source_files = 'OpusLib/include/opus/*.h'
    core.public_header_files = 'OpusLib/include/opus/*.h'
    core.preserve_paths = 'OpusLib/lib/libopus.a'
    core.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/OpusKit/OpusLib/lib' }
  end

  s.subspec 'OpusKit' do |opusKit|
    opusKit.source_files = 'OpusKit/*.{h,m}'
    opusKit.public_header_files = 'OpusKit/*.h'   
    opusKit.dependency 'OpusKit/Core'
  end
  
end
