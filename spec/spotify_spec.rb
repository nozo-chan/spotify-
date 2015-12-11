require_relative 'spec_helper'

describe '#client' do 
	it '#initialize' do 
		expect(CLIENT).to be_an Spotify::Client 
	end 

	it '#search' do 
		VCR.use_cassette 'search' do 
			expect(CLIENT.search('beyonce')).to be_an Hash
		end 

		# it '#find_by' do 
		# 	VCR.use_cassette 'find_by' 
		# 	expect(CLIENT.find_by(id: '')). to be_an Hash
		# end 
		
	end
end 