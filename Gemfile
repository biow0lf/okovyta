source 'https://rubygems.org'

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

gem 'draper', '~> 3.0.0.pre1'
gem 'dotenv-rails'

group :development do
  gem 'listen', '~> 3.0.5'
  # rubocop version locked due config. Update rubocop config on gem update.
  gem 'rubocop', '0.48.0', require: false
  # https://github.com/net-ssh/net-ssh/issues/478
  gem 'bcrypt_pbkdf' # for rbnacl-libsodium
  gem 'rbnacl', '< 4.0' # for rbnacl-libsodium
  gem 'rbnacl-libsodium' # for ssh-ed25519 support
  gem 'capistrano'
  gem 'capistrano-rails'
end

group :development, :test do
  gem 'rspec-rails'
end
