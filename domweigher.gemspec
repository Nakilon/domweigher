Gem::Specification.new do |spec|
  spec.name         = "domweigher"
  spec.version      = "0.0.0"
  spec.summary      = "tool to find the heavy DOM nodes"

  spec.author       = "Victor Maslov aka Nakilon"
  spec.email        = "nakilon@gmail.com"
  spec.license      = "MIT"
  spec.metadata     = {"source_code_uri" => "https://github.com/nakilon/domweigher"}

  spec.add_dependency "nokogiri"

  spec.files        = %w{ LICENSE domweigher.gemspec lib/domweigher.rb
                          bin/domweigher }
  spec.executables  = %w{     domweigher }
  spec.bindir       = "bin"
end
