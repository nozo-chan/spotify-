$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "spotify/version"

Gem::Specification.new do |s|
s.name = 'spotify'
s.version = Spotify::VERSION
s.platform = Gem::Platform::RUBY
s.author = 'Roma Morel'
s.email = 'nozomi.morel@gmail.com'
s.homepage = 'https://github.com/nozo-chan/spotify-'
s.summary  = 'easy access to spotify api'
s.description = ' access (search) items in the itunes library through its public api'
s.license = 'MIT'

s.required_ruby_version = '>= 1.9.2'

s.files =('lib/spotify.rb')
s.files +=Dir['lib/spotify/**']

s.add_development_dependency 'rspec'
s.add_development_dependency 'webmock'
s.add_development_dependency 'vcr'
end 