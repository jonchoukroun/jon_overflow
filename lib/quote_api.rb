require 'httparty'

module QuoteAPI
	API_URL = "https://api.github.com/zen"

	# Hard coded quote in case of rate limit
	def self.standard_quote
		return "Always shut the door on your way out."
	end

	# Call github api for random quote
	def self.api_quote
		HTTParty.get(API_URL)
	end

	def self.get_quote
		return api_quote ? api_quote : standard_quote
	end
end