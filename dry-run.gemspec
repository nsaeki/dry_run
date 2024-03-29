# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dry_run/version'

Gem::Specification.new do |spec|
  spec.name          = "dry_run"
  spec.version       = DryRun::VERSION
  spec.authors       = ["Nobuo Saeki"]
  spec.email         = ["nobuo.saeki@gmail.com"]
  spec.summary       = %q{Add dry run feature in existing classes/modules.}
  spec.homepage      = "https://github.com/nsaeki/dry_run"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "minitest", "~> 5.5"
end
