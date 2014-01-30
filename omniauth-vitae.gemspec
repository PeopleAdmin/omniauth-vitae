# coding: utf-8
require File.expand_path('../lib/omniauth-vitae/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-vitae"
  spec.version       = Omniauth::Vitae::VERSION
  spec.authors       = ["Carl Brasic"]
  spec.email         = ["carl.brasic@peopleadmin.com"]
  spec.summary       = %q{An Omnniauth strategy to authenticate against the Chronicle Vitae Oauth2 API.}
  spec.description   = %q{An Omnniauth strategy to authenticate against the Chronicle Vitae Oauth2 API.}
  spec.homepage      = "https://github.com/PeopleAdmin/omniauth-vitae"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.1'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec', '~> 2.7'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'webmock'
end
