# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flapx_client/version'

Gem::Specification.new do |spec|
  spec.name          = "flapx_client"
  spec.version       = flapxClient::VERSION
  spec.authors       = ["Shawn M."]
  spec.email         = ["shawnvash@gmail.com"]
  spec.description   = %q{A FLAPX client is gem is a ruby wrapper for making remote procedure calls (rpc) to a FlapXCoin daemon wallet (flapxcoind.)}
  spec.summary       = %q{Flapx API Client is a gem program wrapper that makes it easy to work with LiteDoge in ruby.}
  spec.homepage      = "https://sites.google.com/view/flapxcoin/landing-pad"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.33"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
end
