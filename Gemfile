source 'https://rubygems.org'
ruby '2.1.3'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Bootstrap Framework
gem 'bootstrap-sass'

# Font Awesome icons
gem 'font-awesome-rails'

# Devise framework
gem 'devise', '~>3.3.0'

# AWS for files and media
gem 'aws-sdk'

# High-Voltage for pdfs
gem 'high_voltage'

# Chosen for better user select
gem 'chosen-rails'

# Mixpanel
gem 'mixpanel-ruby'

# Modernizer to disable double-tap on mobile
gem 'modernizr-rails'


group :development, :test do
     gem 'sqlite3'
     gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
     gem 'pry-byebug', '~> 1.3.2' # behind latest version b/c jazz_hands needs pry 0.9 and this is the only way to have them not conflict.
end

group :production do
     gem 'pg'
     gem 'rails_12factor'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
