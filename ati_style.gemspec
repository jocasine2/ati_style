# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ati_style/version'

Gem::Specification.new do |spec|
  spec.name          = "ati_style"
  spec.version       = AtiStyle::VERSION
  spec.authors       = ["Jakson Moura"]
  spec.email         = ["jrochelly@gmail.com"]

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = "http://git.seplan.to.gov.br/jakson.moura/ati_style"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "http://rubygems.org"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rails", '~> 5.0.0'
  spec.add_development_dependency "guard-rspec"

end
