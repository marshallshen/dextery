# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'dexter'

Gem::Specification.new do |spec|
  spec.name          = "Dextery"
  spec.version       = Dextery::VERSION
  spec.authors       = ["Marshall Shen"]
  spec.email         = ["mshen@groupon.com"]
  spec.description   = "blog engine based on Jekyll Bootstrap"
  spec.summary       = "blog engine based on Jekyll Bootstrap"
  spec.homepage      = "http://github.com/dexter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('commander', "~> 4.1.3")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
