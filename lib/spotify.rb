require "pp"
require "net/http"
require "json"

require_relative './spotify/version'

module Spotify

class Client
  def search term, type='artist'
    pp "im searching for  #{term}, #{type}"
    # create url
    uri = URI("https://api.spotify.com/v1/search?q=#{term}&type=#{type}")
    # get the response 
    response = Net::HTTP.get(uri)
    object = parse response
  end 

  def parse results 
    JSON.parse(results)
  end 
end 


def spotify_api_response
  uri = URI("https://api.spotify.com/v1/search")
  Net::HTTP.get(uri)
end 

end 

