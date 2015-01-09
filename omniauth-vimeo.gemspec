# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-vimeo/version"

Gem::Specification.new do |gem|
  gem.name        = "omniauth-vimeo"
  gem.version     = Omniauth::Vimeo::VERSION
  gem.authors     = ["Peter Gerard"]
  gem.email       = []
  gem.homepage    = "https://github.com/accidental/omniauth-vimeo"
  gem.description = %q{OmniAuth strategy for Vimeo API 3.2}
  gem.summary     = gem.description
  gem.licenses    = [ 'MIT' ]

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'omniauth-oauth2', '~> 1.2'

  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency 'rake'

  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end
