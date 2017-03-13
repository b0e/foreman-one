$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foreman_one/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foreman_one"
  s.version     = ForemanOne::VERSION
  s.authors     = ["NETWAYS Managed Services GmbH"]
  s.email       = ["support@netways.de"]
  s.homepage    = "http://github.com/netways/foreman-one"
  s.summary     = "Provision and manage OpenNebula VMs from Foreman"
  s.description = "Provision and manage OpenNebula VMs from Foreman"
  s.licenses    = ["GPL-3"]

  s.add_development_dependency('rake')

  s.files = Dir["{app,config,db,lib,locale}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  #s.add_dependency "fog-one"

end
