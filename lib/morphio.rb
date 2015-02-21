require 'uri'
require 'net/http'
require 'net/https'
require 'json'

class Morphio
	def initialize(api_key,scraper)
		@api_key = api_key
		@scraper = scraper
	end


	def query(sql)
		request = Net::HTTP.new('api.morph.io',443)
		request.use_ssl = true;
		request.verify_mode = OpenSSL::SSL::VERIFY_NONE
		path = "/#{@scraper}/data.json?key=#{@api_key}&query=#{sql}"


		response = request.get(URI.escape(path))
		JSON::parse(response.body.encode('UTF-8'))
	end



end
