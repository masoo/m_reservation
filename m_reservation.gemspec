$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "m_reservation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "m_reservation"
  s.version     = MReservation::VERSION
  s.authors     = ["FUNABARA Masao"]
  s.email       = ["masao@masoo.jp"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MReservation."
  s.description = "TODO: Description of MReservation."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7"

  s.add_development_dependency "sqlite3"
end
