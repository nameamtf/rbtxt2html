# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rbtxt2html/version'

Gem::Specification.new do |spec|
  spec.name          = "rbtxt2html"
  spec.version       = RbTxt2HTML::VERSION
  spec.authors       = ["Edvaldo Silva de Almeida Júnior"]
  spec.email         = ["edvaldoajunior@gmail.com"]

  spec.summary       = "Reads a TXT file and converts it to HTML"
  spec.description   = "Reads a TXT file and converts it to HTML according to some rules and perfomring some formating."
  spec.homepage      = "https://github.com/EdDeAlmeidaJr/rbtxt2html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
