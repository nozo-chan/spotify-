require 'respec'
require_relative '../lib/spotify'
require_relative 'vcr_setup'

CLIENT = Spotify::Client.new