# -*- encoding: utf-8 -*-
require File.expand_path('../lib/url_field/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steven Wanderski"]
  gem.email         = ["steven@bxcreative.com"]
  gem.description   = %q{Formats a URL string to include the proper HTTP protocol}
  gem.summary       = %q{Based on the work by Paul Campbell}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "url_field"
  gem.require_paths = ["lib"]
  gem.version       = UrlField::VERSION
end
