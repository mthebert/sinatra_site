require 'sinatra'
require 'sinatra/reloader' if development?
require './song'
require 'sass'
# using slim instead of erb
require 'slim'

# optional if you want to change locations
# otherwise default is public and views
# set :public_folder, 'assets'
# set :views, 'templates'

# this is for sass
get('/styles.css'){ scss :styles }

get '/' do 
	slim :home
end

get '/about' do
	@title = "All About This Website" 
	slim :about
end

get '/contact' do 
	slim :contact
end

# this is built-in for 404s
not_found do
	slim :not_found
end

# for other status, use example below
get '/error' do
	status 500
	"There's nothing wrong, really :P"
end