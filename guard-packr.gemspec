# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/packr/version"

Gem::Specification.new do |s|
  s.name        = "guard-packr"
  s.version     = Guard::Packr::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Merchii", "Jonas Grimfelt"]
  s.email       = ["jonas@merchii.com", "grimen@gmail.com"]
  s.homepage    = "http://github.com/merchii/guard-packr"
  s.summary     = %q{Guard for Packr.}
  s.description = %q{Guard::Packr automatically compresses/obfuscates javascript files when modified (using Guard + Packr).}

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'guard-packr'

  s.add_dependency 'guard', '>= 0.2.1'
  s.add_dependency 'packr', '>= 3.1.0'

  s.add_development_dependency 'bundler', '~> 1.0.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
