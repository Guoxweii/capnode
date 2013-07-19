# coding: utf-8
require 'capnode/version'

Gem::Specification.new do |spec|
  spec.name          = "capnode"
  spec.version       = Capnode::VERSION
  spec.authors       = ["gxw"]
  spec.email         = ["alphaguoxiongwei@gmail.com"]
  spec.description   = %q{capistrano for nodeJs}
  spec.summary       = %q{the new way for nodeJs deploy}
  spec.homepage      = "http://github.com/littleluren/capnode"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "capistrano", "~> 2.15.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

# Gem::Specification.new do |s|
#   s.name        = "capsum"
#   s.version     = File.read(File.expand_path("../VERSION", __FILE__)).chomp
#   s.platform    = Gem::Platform::RUBY
#   s.authors     = ["Sunteya"]
#   s.email       = ["Sunteya@gmail.com"]
#   s.homepage    = "http://github.com/sunteya/capsum"
#   s.summary     = %q{Collect gems and recipes related capistrano.}
#   s.description = %q{Collect gems and recipes related capistrano.}

#   s.files         = `git ls-files`.split("\n")
#   s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#   s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
#   s.require_paths = ["lib"]
  
  
#   # Dependency Gems
#   s.add_dependency "capistrano", "~> 2.15.3"
#   # s.add_dependency "capistrano-helpers", "~> 0.7.1"
#   # s.add_dependency "cap-recipes", "~> 0.3.36"
#   # https://github.com/rubaidh/rubaidhstrano
#   # https://github.com/relevance/cap_gun
#   # https://github.com/railsmachine/capistrano-cowboy
#   # https://github.com/fnichol/capstrap
#   # https://github.com/bokmann/dunce-cap
  
#   s.add_development_dependency "rake"
#   s.add_development_dependency "bundler"
#   s.add_development_dependency "version"
# end