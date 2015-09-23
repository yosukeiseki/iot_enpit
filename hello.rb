require 'sinatra'
require 'sinatra/reloader'

get '/' do
 @title = "Hello World!"
 erb :index
end

get '/AIIT' do
 "Hello AIIT!"
end

get '/iot/morning' do
 "Good Morning!"
end

get '/iot/evening' do
 "Good evening!"
end

get '/hi' do
 "How are you doing?"
end


