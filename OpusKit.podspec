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

  s.source_files = 'OpusLib/include/opus/*.h', 'OpusKit/*.{h,m}'
  s.public_header_files = 'OpusLib/include/opus/*.h' , 'OpusKit/*.h'
  s.preserve_paths = 'OpusLib/lib/libopus.a'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/OpusKit/OpusLib/lib' }
  s.vendored_libraries = 'OpusLib/lib/libopus.a'
  
end
