source 'https://rubygems.org'

DM_VERSION = '~> 1.2.0'

gem 'sinatra'
gem 'slim'
gem 'tilt', '~> 1.4.1'
gem 'sass'
gem 'dm-core', DM_VERSION
gem 'dm-migrations', DM_VERSION
gem 'dm-validations', DM_VERSION
gem 'dm-constraints', DM_VERSION
gem 'dm-transactions', DM_VERSION
gem 'dm-aggregates', DM_VERSION
gem 'dm-timestamps', DM_VERSION
gem 'dm-observer', DM_VERSION

group :development, :test do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter', DM_VERSION 
end

gem "heroku"

group :production do
  gem 'pg'
  gem 'dm-postgres-adapter', DM_VERSION
end