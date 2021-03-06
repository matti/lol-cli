# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lol/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "lol-cli"
  spec.version       = Lol::CLI::VERSION
  spec.authors       = ["Matti Paksula"]
  spec.email         = ["matti.paksula@iki.fi"]
  spec.summary       = %q{Basic CLI with Thor}
  spec.description   = %q{Minimum structure for CLI and Thor}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'thor'
end
