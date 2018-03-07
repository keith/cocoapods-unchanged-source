# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-unchanged-source/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-unchanged-source'
  spec.version       = CocoapodsUnchangedSource::VERSION
  spec.authors       = ['Keith Smiley']
  spec.email         = ['keithbsmiley@gmail.com']
  spec.description   = %q{Don't check if a source repo is outdated, just assume it is}
  spec.homepage      = 'https://github.com/keith/cocoapods-unchanged-source'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
