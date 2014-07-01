$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rmfluxus_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rmfluxus_rails"
  s.version     = "0.1"
  s.authors     = ["Marcel"]
  s.email       = ["marcel@trampos.co"]
  s.homepage    = "http://trampos.co"
  s.summary     = "Gema de integração com o RM Fluxus da TOTVS."
  s.description = "Gema de integração com o RM Fluxus da TOTVS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.2.rc1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
