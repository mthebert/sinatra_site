Demo Sinatra Site
=================

Playing around with Sinatra making a demo site, reading Jump Start Sinatra

Using:
	- Ruby
	- Sinatra
	- Slim
	- Sass
	- DataMapper
	- sqlite3/postgresql	

Notes: Changed from ERB to Slim, added Sass, added data with sqlite3 and postgresql

[Matt Thebert](matt@thebert.com)

This code is being pushed to heroku - [launch it](http://obscure-citadel-5269.herokuapp.com)

Keys to Heroku
==============
I have pushed plenty of rails demos to heroku, but I had never pushed Sinatra.  

To push this to Heroku, I had to add my key, add the gemfile, add the gemfile.lock generated after bundle, and the config.ru which contains a reference to my main.rb:

require './main'
run Sinatra::Application

I also ran into an issue where it did play well with the default 2.0.0 of tilt, so I had to add to my gemfile:
gem 'tilt', '~> 1.4.1'

after that it was as simple as heroku create, heroku push origin master

In dealing with the data_mapper, I found [this article](http://stackoverflow.com/questions/8866411/deploy-a-simple-test-app-with-sinatra-datamapper-postgres-heroku-returns)  which helped me alter my code from sqlite3 to postresql and Heroku.  I already had the test and production in my gemfile, but the DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/recall.db") and running heroku config was very helpful!

Using Slim for Templates
========================
ERB was always my template language, but for this I used [Slim](http://slim-lang.com/)

To add Slim support, change my .erb to .slim, add require 'slim' to my main.rb, and gem 'slim' to my gemfile.

Using Sass
==========
Switching this app from CSS to Sass was easy.  Delete the .CSS from the /public, add a .SCSS to the /views and then add a path in my main.rb get('/styles.css'){ scss :styles } 

Databases
=========
The first issue to resolve was how to use sqlite3 locally and postgresql on heroku for production, which I solved in the Keys to Heroku segment earlier.

