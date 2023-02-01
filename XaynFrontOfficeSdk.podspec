Pod::Spec.new do |s|
  s.name = 'XaynFrontOfficeSdk'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.20.1'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v1.0.0-rc8' }
  s.authors = 'xayn.com'
  s.license = Apache-2.0
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'XaynFrontOfficeSdk Swift SDK'
  s.description = 'xayn_front_office_sdk'
  s.source_files = 'XaynFrontOfficeSdk/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
