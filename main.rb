require 'sinatra'
# using slim instead of erb
require 'slim'
# uncomment below to automatically reload on changes in dev
require 'sinatra/reloader' if development?

# optional if you want to change locations
# otherwise default is public and views
# set :public_folder, 'assets'
# set :views, 'templates'

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