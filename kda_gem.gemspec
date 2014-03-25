# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kda_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "kda_gem"
  spec.version       = KdaGem::VERSION
  spec.authors       = ["Dao Anh Khoa"]
  spec.email         = ["khoada@lifetimetech.vn"]
  spec.description   = %q{First gem: display time with format}
  spec.summary       = %q{Display time with format}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
