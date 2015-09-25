Rails.application.routes.draw do
  root 'top#index'
  get 'top/item_ranking'
