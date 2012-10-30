source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg', '0.12.2'
gem 'wdm'

group :development, :test do
  gem 'rspec-rails', '2.11.0'
  gem "guard"
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork', '0.9.2'
  gem 'wdm'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
end

group :test do
  if RUBY_PLATFORM =~ /(win32|w32)/
    gem "win32console", '1.3.0'
  end
  gem "minitest"
  gem "minitest-reporters", '>= 0.5.0'
end