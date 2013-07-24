# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'dextery'

Gem::Specification.new do |spec|
  spec.name          = "dextery"
  spec.version       = "0.0.3b"
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
  spec.add_runtime_dependency('jekyll', "~>1.0.3")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.files << %w[
    lib/dextery/template/404.html
    /lib/dextery/template/404.html
    /lib/dextery/template/_config.html
    /lib/dextery/template/archive.html
    /lib/dextery/template/atom.xml
    /lib/dextery/template/categories.html
    /lib/dextery/template/changelog.md
    /lib/dextery/template/index.md
    /lib/dextery/template/pages.html
    /lib/dextery/template/Rakefile
  ]
end
