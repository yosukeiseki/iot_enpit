# -*- coding: utf-8 -*- 
require 'sinatra' 
require 'rakuten_web_service' 
require 'rss' 

#参考: https://github.com/k2works/sinatra_rakuten_api 

get '/' do 
  RakutenWebService.configuration do |c| 
    c.application_id = ENV["APPID"] 
    c.affiliate_id = ENV["AFID"] 
  end 

   @rankings = RakutenWebService::Ichiba::Item.ranking(:genreId => 100337) 
   erb :item_ranking 
end 

get '/man' do 
  RakutenWebService.configuration do |c| 
    c.application_id = ENV["APPID"] 
    c.affiliate_id = ENV["AFID"] 
  end 

   @rankings = RakutenWebService::Ichiba::Item.ranking(:genreId => 100337, :sex => 0) 
   erb :item_ranking 
end 

get '/woman' do 
  RakutenWebService.configuration do |c| 
    c.application_id = ENV["APPID"] 
    c.affiliate_id = ENV["AFID"] 
  end 

   @rankings = RakutenWebService::Ichiba::Item.ranking(:genreId => 100337, :sex => 1) 
   erb :item_ranking 
end 
