Pod::Spec.new do |s|
  s.name                    = "ActionBarManager"
  s.version                 = "0.1.0"
  s.summary                 = "ActionBarManager"
  s.description             = "ActionBarManager"
  s.homepage                = "http://www.edreamsodigeo.com/"
  s.license                 = "Copyright (c) 2016 eDreams ODIGEO. All rights reserved"
  s.author                  = { "iOS Mobile Team" => "ios-dev@odigeo.com" }
  s.ios.deployment_target   = "8.0"
  s.source 					= { :path => '.' }
  s.source_files  			= "ActionBarManager/**/*.swift"
  s.framework  				= "Foundation"
  s.requires_arc 			= true
  
  s.dependency 				'TableViewKit'
end
