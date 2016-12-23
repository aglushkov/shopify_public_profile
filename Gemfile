source 'https://rubygems.org'
ruby IO.read("#{Dir.pwd}/.ruby-version").strip

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'shopify_app'
gem 'activeresource', github: 'rails/activeresource'

gem 'rails', '~> 5.0.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'

group :development do
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', require: false
  gem 'spring-commands-rspec', require: false

  # Debugging
  gem 'better_errors'
  gem 'binding_of_caller'

  # Deploy
  gem 'mina', require: false
  gem 'mina-puma', require: false
  gem 'mina-multistage', require: false
  gem 'mina-sidekiq', '~> 0.4.1', require: false

  # Detect code smells
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'reek', require: false
  gem 'overcommit', require: false

  # Scan for security vulnerabilities
  gem 'brakeman', require: false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-nav'
  gem 'rspec-rails'
end

group :test do
  gem 'webmock', require: false
  gem 'fuubar'
  gem 'shoulda-matchers', '~> 3.1.1'
  gem 'rails-controller-testing', '~> 1.0.1'
  gem 'selenium-webdriver', '~> 2.53'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
