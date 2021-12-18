# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'litedoge_client/version'

Gem::Specification.new do |spec|
  spec.name          = "opalcoin_client"
  spec.version       = LiteDogeClient::VERSION
  spec.authors       = ["Shawn M."]
  spec.email         = ["info@litedogee.com"]
  spec.description   = %q{A LiteDoge client for ruby. This gem is a ruby wrapper for making remote procedure calls (rpc) to a litedoge daemon (litedoged.)}
  spec.summary       = %q{LiteDogeClient is a gem that makes it easy to work with LiteDoge in ruby.}
  spec.homepage      = "https://litedogeofficail.org"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
end
