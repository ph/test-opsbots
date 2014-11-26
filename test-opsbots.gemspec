# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test/opsbots/version'

Gem::Specification.new do |spec|
  spec.name          = "test-opsbots"
  spec.version       = Test::Opsbots::VERSION
  spec.authors       = ["Pier-Hugues Pellerin"]
  spec.email         = ["phpellerin@gmail.com"]
  spec.summary       = 'This gem is only a test and should not be used for anything'
  spec.description   = 'this shouldnt be used'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if RUBY_PLATFORM == 'java'
    spec.platform = RUBY_PLATFORM
  end

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency "msgpack-jruby"
  spec.add_development_dependency 'logstash-devutils', '~> 0.0.4'
  spec.add_development_dependency 'rspec'
end
