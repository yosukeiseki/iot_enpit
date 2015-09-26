# -*- coding: utf-8 -*-
require 'sinatra'
#require 'sinatra/reloader'

#URL / でアクセス
get '/' do
  erb :views 
end

#URL /hoge でアクセス
get '/hoge' do
  @content = "main content"
  erb :hoge,:locals => {:content => content}
end
