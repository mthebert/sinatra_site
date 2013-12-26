require 'dm-core'
require 'dm-migrations'

# For Heroku
DATABASE_URL =  'postgres://aqtpybxkqlovkp:zHza0zJ8TUIeDFX6ziiLXKd@ec2-54-197-237-231.compute-1.amazonaws.com/d5qt69ooskk6ei'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")
# DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
class Song
	include DataMapper::Resource
	property :id, Serial
	property :title, String
	property :lyrics, Text
	property :length, Integer
	property :released_on, Date 
end

DataMapper.finalize

get '/songs' do
	@songs = Song.all
	slim :songs
end