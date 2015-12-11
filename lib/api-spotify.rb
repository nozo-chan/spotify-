require 'net/http'
require 'json'

def spotify_api_response  
# encode URI using the URI constant   
uri = URI("https://api.spotify.com/v1/search?q=#{term}&type=artist")
# tell Net::HTTP to GET the URI   
Net::HTTP.get(uri) # => String 
end

def simplify_response response 
	response = JSON.parse response
	response['results'].map do |result|
		{ trackName: result['trackName'],
			trackId: result['trackId']
		}


	end 
end 