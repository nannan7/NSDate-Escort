
Pod::Spec.new do |s|
  s.name         = "NSDate-Escort"
  s.version      = "2.1.1"
  s.summary      = "A NSDate utility library that is compatible with NSDate-Extensions API."
  s.homepage     = "https://github.com/azu/NSDate-Escort"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "azu" => "azuciao@gmail.com" }
  s.source       = {
    :git => "https://github.com/azu/NSDate-Escort.git",
    :tag => s.version.to_s
  }
  s.requires_arc = true

  s.swift_version = '5.0'
  s.ios.deployment_target  = '9.0'
  s.osx.deployment_target  = '10.14'

  s.default_subspec = 'ObjC'

  s.subspec 'ObjC' do |a|
    a.source_files = 'NSDate-Escort/**/*.{h,m}'
  end
  s.subspec 'Swift' do |a|
    a.source_files = 'NSDate-Escort/**/*.{swift}'
  end
end
