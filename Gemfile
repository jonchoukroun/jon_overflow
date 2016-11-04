source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'google-webfonts-rails'

gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'faker'
gem 'bcrypt', '~> 3.1.7'

gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass'

gem 'acts_as_votable', '~> 0.10.0'

gem 'local_time'

gem 'capybara'

gem 'paperclip', '~> 5.0.0'
#
# Use S3 storage only in production
gem 'aws-sdk', '~> 2', group: :production


group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'dotenv'
end

group :development do
  gem 'capistrano', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma', require: false
end

gem 'puma'

group :test do
	gem 'shoulda-matchers', '~> 3.1'
end

gem 'rails_12factor', group: :production

ruby '2.3.1'
