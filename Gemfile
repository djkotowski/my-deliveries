# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.2"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rack-cors"
gem "rails", "~> 7.1.2"
gem "redis", ">= 4.0.1"
gem "strong_migrations"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "bullet"
  gem "debug", platforms: %i[mri windows]
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
end

group :development do
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "database_cleaner-active_record", require: false
  gem "shoulda-matchers", require: false
end
