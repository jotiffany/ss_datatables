# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ss_datatables/version'

Gem::Specification.new do |spec|
  spec.name          = "ss_datatables"
  spec.version       = SsDatatables::VERSION
  spec.authors       = ["Joan Tiffany Siy"]
  spec.email         = ["joan@teamcodeflux.com"]
  spec.summary       = %q{Customized server side javascript for datatables}
  spec.description   = %q{Initializes a table with 'ss-datatable' class as a datatable}
  spec.homepage      = "https://github.com/jotiffany/ss_datatables"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\x0")
  spec.files         = Dir["{app, lib, vendor}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency 'railties', '>= 3.2.6', '< 5'
  spec.add_dependency 'jquery-datatables-rails', '~> 2.2.3'
  spec.add_dependency 'coffee-rails', '~> 4.0.0'
end
