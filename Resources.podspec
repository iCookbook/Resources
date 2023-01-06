Pod::Spec.new do |s|
  s.name             = 'Resources'
  s.version          = '1.0.0'
  s.summary          = 'Resources layer of the application.'
  s.homepage         = 'https://github.com/iCookbook/Resources'
  s.author           = { 'htmlprogrammist' => '60363270+htmlprogrammist@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/iCookbook/Resources.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.source_files = 'Resources/**/*.{swift}'
  s.resource_bundle = { "Resources" => ["Resources/**/*.{strings,xcassets,otf,stringsdict}"] }
  
  s.dependency 'Logger'
end
