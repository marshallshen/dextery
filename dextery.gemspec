# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'dextery'

Gem::Specification.new do |spec|
  spec.name          = "dextery"
  spec.version       = "0.0.2"
  spec.authors       = ["Marshall Shen"]
  spec.email         = ["mshen@groupon.com"]
  spec.description   = "Blog engine based on Jekyll Bootstrap"
  spec.summary       = "Blog engine based on Jekyll Bootstrap"
  spec.homepage      = "https://github.com/marshallshen/dextery"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('commander', "~> 4.1.3")
  spec.add_runtime_dependency("dextery", "~> 0.0.2")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
