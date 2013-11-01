# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'railsless/console/version'

Gem::Specification.new do |spec|
  spec.name          = "railsless-console"
  spec.version       = Railsless::Console::VERSION
  spec.authors       = ["Rob Howard"]
  spec.email         = ["rob@robhoward.id.au"]
  spec.description   = %q{Provides a Rails-like console via Rake.}
  spec.summary       = %q{Provides a Rails-like console via Rake. Puts "require 'railsless/console/task'" in your Rakefile and then run "rake console".}
  spec.homepage      = "https://github.com/damncabbage/railsless-console"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_dependency "rake"
end
