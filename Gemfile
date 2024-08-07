# frozen_string_literal: true

source 'https://rubygems.org'

ruby '~> 3.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.1.3', '>= 7.1.3.2'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '>= 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '>= 4.0.1'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem 'image_processing', '~> 1.2'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem 'rack-cors'

# Provides token-based authentication for Rails applications
gem 'devise_token_auth', '~> 1.2', '>= 1.2.3'

# Adds safeguards to prevent dangerous database migrations
gem 'strong_migrations', '~> 1.8'

# Cors
gem 'rack-cors', '~> 2.0', '>= 2.0.2'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'faker', '~> 3.4', '>= 3.4.2'
  gem 'pry-rails', '~> 0.3.11'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.3'
  gem 'shoulda-matchers', '~> 6.2'
  gem 'simplecov', '~> 0.22.0', require: false
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem 'spring'
end
