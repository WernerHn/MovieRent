Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => 'movie_rent#index', as: 'MovieRent'
  resources :rent_a_movies, :line_movies, :carts
  resources :movies, only: [:show, :index, :new, :create]
  devise_for :users
  get 'movie_rent/index'
  get 'message', to: 'carts#message', as: 'carts_message'
  get 'make_a_rent', to: 'movies#make_a_rent'

end
