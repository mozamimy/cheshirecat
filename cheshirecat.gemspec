# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cheshirecat/version'

Gem::Specification.new do |spec|
  spec.name          = "cheshirecat"
  spec.version       = Cheshirecat::VERSION
  spec.authors       = ["Moza USANE"]
  spec.email         = ["mozamimy@quellencode.org"]

  spec.summary       = %q{Cheshirecat is an alternative deploy tool designed for middleman.}
  spec.description   = %q{Cheshirecat is an alternative deploy tool designed for middleman.}
  spec.homepage      = "https://github.com/mozamimy/cheshirecat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "git"
end
