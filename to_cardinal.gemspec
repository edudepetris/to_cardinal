# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'to_cardinal/version'

Gem::Specification.new do |spec|
  spec.name          = "to_cardinal"
  spec.version       = ToCardinal::VERSION
  spec.authors       = ["edu depetris"]
  spec.email         = ["edu.depetris.00@gmail.com"]
  spec.summary       = %q{Conver ordinal numbers to cardinal numbers}
  spec.description   = %q{Convert full ordinal numbers like 'second' to cardinal numbers like 2}
  spec.homepage      = "https://github.com/edudepetris/to_cardinal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "coveralls", "~> 0.7"
end
