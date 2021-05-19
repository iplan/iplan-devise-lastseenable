$:.push File.expand_path("../lib", __FILE__)


# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "iplan-devise-lastseenable"
  s.version     = '1.0.1'
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.metadata    = {'default_gem_server' => "https://gems.iplan.co.il", 'allowed_push_host' => 'https://gems.iplan.co.il'}

  s.files = Dir["{lib}/**/*"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "railties", "> 3.0"
  s.add_dependency "activerecord", "> 3.0"
  s.add_dependency "devise", "> 3.0"

end