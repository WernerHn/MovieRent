Rails.application.routes.draw do

  root :to => 'movie_rent#index', as: 'MovieRent'
  resources :rent_a_movies, :line_movies, :carts, :movies
  devise_for :users
  get 'movie_rent/index'
  get 'message', to: 'carts#message', as: 'carts_message'
  get 'make_a_rent', to: 'movies#make_a_rent'

end
