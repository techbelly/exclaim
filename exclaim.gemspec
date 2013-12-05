# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exclaim/version'

Gem::Specification.new do |gem|
  gem.name          = "exclaim"
  gem.version       = Exclaim::VERSION
  gem.authors       = ["Ben Griffiths"]
  gem.email         = ["bengriffiths@gmail.com"]
  gem.description   = %q{Silly gem that adds random exclamations to the start of strings}
  gem.summary       = %q{}
  gem.homepage      = "http://github.com/techbelly/exclaim"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
