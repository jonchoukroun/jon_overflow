require 'httparty'

module QuoteAPI
	API_URL = "https://api.github.com/zen"

	def self.get_quote
		HTTParty.get(API_URL)
	end
end