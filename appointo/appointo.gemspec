# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'appointo/version'

Gem::Specification.new do |spec|
  spec.name          = "appointo"
  spec.version       = Appointo::VERSION
  spec.authors       = ["kat markava"]
  spec.email         = ["katryc@outlook.com"]

  spec.summary       = %q{validations for appointment app.}
  spec.description   = %q{helps create the set time and duration for scheduling appointments-applications-based logic.}
  spec.homepage      = ""
  spec.license       = "none"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'https://rubygems.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
