# ISSUE
# 
# I need to make a call to the github api zen endpoint
# and display the returned quote on app/views/questions/index.html.erb
# This works, but the number of allowed calls is set to rate-limit = 60
# 
# The release requires that I raise the rate limit by 
# authenticating with my github username and password
# I can't get that to work, and I can't find a solution online.
# 
# Github says all API requests need a 'User-Agent' value passed,
# which I'm including in my @auth hash.
# 
# I've tried various things, documented in self.api_quote below
# I got, but can't recreate a github request error,
# 	'Request forbidden by administrative rules. Please make sure your request has a User-Agent header.'
# 
# You can recreate that on the command line (if httparty gem is installed):
# 	httparty -u username:password https://api.github.com/zen user_agent=...
# I've tried different variations on that, but no luck.
# 
# Where am I going wrong? 	
 			
require 'httparty'

module QuoteAPI
	API_URL = "https://api.github.com/zen"

	def self.authorize
		@auth = {
			# These are hidden in config/env/development.env
			# Since my password's there I'm not pushing that remote
			"username" => ENV["GITHUB_USER"],
			"password" => ENV["GITHUB_PASS"],

			# I can't find documentation on what this is supposed do be
			# but GitHub says to pass username and password.
			"User-Agent" => "jonchoukroun"			
		}
	end

	# Hard coded quote in case of rate limit
	def self.standard_quote
		return "Always shut the door on your way out."
	end

	# Call github api for random quote
	def self.api_quote
		# @response = HTTParty.get(API_URL)
		@response = HTTParty.get(
			API_URL,
			headers: { "User-Agent" => "jonchoukroun" }		# works, but rate limit is 60
			# headers: authorize		# cause NoMethodError 'strip' on nil class
			# headers: @auth 					# works, but rate limit is still 60
		)
	end

	def self.requests_remaining
		@response.headers["x-ratelimit-limit"]	# should return 5000, not 60
	end

	# Bypassing this until rate limit issue resolved
	def self.get_quote
		return api_quote ? api_quote : standard_quote
	end
end