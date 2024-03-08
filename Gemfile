source "https://rubygems.org"

ruby "3.3.0"

gem "rails"

gem "bootsnap", require: false
gem "dartsass-rails"
gem "importmap-rails"
gem "jbuilder"
gem "propshaft"
gem "puma"

group :development, :test do
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :deploy, optional: true do
  gem "base64", require: false
  gem "bcrypt_pbkdf", require: false
  gem "capistrano-rails", require: false
  gem "capistrano", require: false
  gem "ed25519", require: false
end
