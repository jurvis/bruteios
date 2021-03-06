# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brawn/version'

Gem::Specification.new do |spec|
  spec.name          = "brawn"
  spec.version       = Brawn::VERSION
  spec.authors       = ["Jurvis Tan"]
  spec.email         = ["jurvis.tan@me.com"]

  spec.summary       = %q{School assignment to demonstrate pen-testing iDevices}
  spec.description   = %q{School assignment to demonstrate pen-testing iDevices}
  spec.homepage      = "https://github.com/jurvis/brawn"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = [`git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }, Dir.glob("assets/**/*")]
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'commander', '= 4.4.3'
  spec.add_dependency 'hooray', '= 0.3.0'
  spec.add_dependency 'table_print'
  spec.add_dependency 'net-ssh'
  spec.add_dependency 'net-scp'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry-rescue'
  spec.add_development_dependency 'pry-stack_explorer'
end
