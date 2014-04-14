# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bancbox/version'

Gem::Specification.new do |spec|
  spec.name          = "bancbox"
  spec.version       = Bancbox::VERSION
  spec.authors       = ["Rahulindia25"]
  spec.email         = ["rahulindia25@gmail.com"]
  spec.description   = %q{Bancbox Api}
  spec.summary       = %q{Bancbox Api}
  spec.homepage      = "https://github.com/krypt2005/bancboxgem"
  spec.license       = "MIT"

  spec.files         = ["lib/bancbox.rb", "lib/bancbox/version.rb","lib/bancbox/investor.rb","lib/bancbox/issuer.rb","lib/bancbox/angel_fund.rb","lib/bancbox/fund_account.rb","lib/bancbox/fund_escrow.rb","lib/bancbox/withdraw_funds.rb","lib/bancbox/escrow.rb","lib/bancbox/proceeds_scheduler.rb"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
