require_relative 'lib/ip_info/version'

Gem::Specification.new do |spec|
  spec.name          = "ip_info"
  spec.version       = IpInfo::VERSION
  spec.authors       = ["Andersen Fan"]
  spec.email         = ["as181920@gmail.com"]

  spec.summary       = %q{IP info}
  spec.description   = %q{country, city, location, postal}
  spec.homepage      = "https://github.com/as181920/ip_info"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = ""
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/as181920/ip_info"
  spec.metadata["changelog_uri"] = "https://github.com/as181920/ip_info"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "maxmind-geoip2"
end
