# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter/bootstrap4/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "twitter-bootstrap4-rails"
  spec.version       = Twitter::Bootstrap4::Rails::VERSION
  spec.authors       = ["Rahul Singh"]
  spec.email         = ["rahul@akaruilabs.com"]

  spec.summary       = %q{twitter-bootstrap4-rails packages the bootstrap.js and bootstrap.css plugin for rails asset pipeline}
  spec.description   = %q{twitter-bootstrap4-rails packages the bootstrap.js and bootstrap.css plugin for rails asset pipeline}
  spec.homepage      = "https://github.com/irahulsingh/twitter-bootstrap4-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency  'railties'
  spec.add_runtime_dependency  'actionpack'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
