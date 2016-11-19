# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lulalala_address_tokenizer/version'

Gem::Specification.new do |spec|
  spec.name          = "lulalala_address_tokenizer"
  spec.version       = LulalalaAddressTokenizer::VERSION
  spec.authors       = ["lulalala"]
  spec.email         = ["mark@goodlife.tw"]

  spec.summary       = %q{Postal addresses tokenizer using Wapiti model}
  spec.description   = %q{Postal addresses tokenizer using Wapiti model}
  spec.homepage      = "https://github.com/lulalala/address_tokenizer"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "wapiti"
end
