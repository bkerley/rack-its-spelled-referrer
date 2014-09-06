# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/its/spelled/referrer/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-its-spelled-referrer"
  spec.version       = Rack::Its::Spelled::Referrer::VERSION
  spec.authors       = ["Bryce Kerley"]
  spec.email         = ["bkerley@brycekerley.net"]
  spec.summary       = %q{Fixes a misspelling in HTTP.}
  spec.description   = %q{Copies the `referer` header to `referrer`.}
  spec.homepage      = "https://github.com/bkerley/rack-its-spelled-referrer"
  spec.license       = "CC0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
