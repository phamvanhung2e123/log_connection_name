
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "log_connection_name/version"

Gem::Specification.new do |spec|
  spec.name          = "log_connection_name"
  spec.version       = LogConnectionName::VERSION
  spec.authors       = ["ファム ヴァンフン"]
  spec.email         = ["vanhung.pham@mixi.co.jp"]

  spec.summary       = "Log connection name for ActiveRecord"
  spec.description   = "Log connection name for ActiveRecord"
  spec.homepage      = "https://github.com/phamvanhung2e123/log_connection_name"
  spec.license       = "MIT"
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency 'activerecord', '>= 3.2.0'
end
