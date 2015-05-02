source 'https://rubygems.org'


gem 'rails', '4.2.1'

gem 'rails-api'

gem 'spring', :group => :development


gem 'pg'



# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'unicorn'
gem 'unicorn-rails'
gem 'rspec'
gem 'jwt'
gem 'rack-cors', require: 'rack/cors'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers', branch: '0-9-stable'
group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

gem 'factual-api'
gem 'figaro'