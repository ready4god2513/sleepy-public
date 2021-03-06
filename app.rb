require "sinatra"
require "erb"
require "rubygems"
require "twitter"
require_relative 'environment'

before do
  search = Twitter::Search.new

  # Find the 3 most recent marriage proposals to @justinbieber
  @tweets = search.containing("sleepy drivers").result_type("recent").per_page(3)
end

not_found do
  erb :'static/home'
end

get '/' do
  erb :'static/home'
end

get '/contact-us/?' do
  erb :'static/contact'
end

get '/help/?' do
  erb :'static/help'
end

get '/did-you-know/?' do
  erb :'static/dyk'
end

get '/resources/?' do
  erb :'static/resources'
end