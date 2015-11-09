# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rgigya/version'

Gem::Specification.new do |s|
  s.name = "rgigya"
  s.version = RGigya::VERSION
  s.authors = ["Scott Sampson"]
  s.email = "scott@cloudspace.com"

  s.summary = "Ruby Wrapper/SDK for the Gigya api"
  s.description = "This is a ruby SDK for the Gigya api."
  s.homepage = "http://github.com/cloudspace/rgigya"
  
  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]

  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]

  s.add_runtime_dependency "httparty", "~> 0.13.0"
  s.add_runtime_dependency "rack", "~> 1.4"
  s.add_runtime_dependency "activesupport", "= 3.2"

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "shoulda", "~> 3.5.0"
  s.add_development_dependency "rdoc", "~> 3.12"
  s.add_development_dependency "rspec"
  s.add_development_dependency "pry-byebug"
end

