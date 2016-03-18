source 'https://rubygems.org'

gem 'rails', '4.2.5.1'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0'
gem 'spring'
gem 'puma'
gem 'aws-sdk', '< 2'
gem 'rails-i18n'
gem 'devise'
gem 'devise-i18n'
gem 'rack-cors', '~> 0.4.0'

group :production, :staging do
  gem 'rails_stdout_logging'
  gem 'rack-timeout'
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec', require: false
  gem 'rspec-nc', require: false
end

group :test do
  gem 'shoulda-matchers', require: false
end
