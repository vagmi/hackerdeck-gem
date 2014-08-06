# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hackerdeck/version'

Gem::Specification.new do |spec|
  spec.name          = "hackerdeck"
  spec.version       = Hackerdeck::VERSION
  spec.authors       = ["Vagmi Mudumbai"]
  spec.email         = ["vagmi.mudumbai@gmail.com"]
  spec.summary       = %q{Presentation for hackers}
  spec.description   = %q{Build deck with slim lang}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "sinatra","~> 1.4.5"
  spec.add_dependency "slim","~> 2.0.3"
  spec.add_dependency "tilt","~> 1.3.4"
  spec.add_dependency "redcarpet","~> 3.1.2"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
