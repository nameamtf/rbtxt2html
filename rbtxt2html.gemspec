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

  spec.files         = [ "CODE_OF_CONDUCT.md", "Gemfile", "LICENSE.txt", "Rakefile", "rbtxt2html.gemspec", "README.md", "lib/rbtxt2html.rb", "lib/rbtxt2html/base.rb", "lib/rbtxt2html/reader.rb", "lib/rbtxt2html/version.rb", "lib/rbtxt2html/writer.rb", "spec/rbtxt2html_spec.rb", "spec/spec_helper.rb" ]
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
