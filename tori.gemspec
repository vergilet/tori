# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tori/version'

Gem::Specification.new do |spec|
  spec.name          = "tori"
  spec.version       = Tori::VERSION
  spec.authors       = ["Yaro"]
  spec.email         = ["osyaroslav@gmail.com"]
  spec.summary       = %q{Tori game.}
  spec.description   = %q{Soon.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "gosu", "~> 0.8"
  spec.add_development_dependency "bundler", "~> 1.7"
end
