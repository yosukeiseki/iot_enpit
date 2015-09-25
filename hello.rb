# -*- coding: utf-8 -*-
require 'sinatra'
require 'rakuten_web_service'

#参考: https://github.com/k2works/sinatra_rakuten_api

get '/' do
  RakutenWebService.configuration do |c|
    c.application_id = 1038224467908657119
    c.affiliate_id = "145c3657.d691dece.145c3658.016c6745"
  end

  # Use genre id to fetch genre object
  @rankings = RakutenWebService::Ichiba::Item.ranking(:age => 20, :sex => 0)
  @rankings = RakutenWebService::Ichiba::Genre[100337].ranking
  erb :item_ranking
end
