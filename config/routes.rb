Rails.application.routes.draw do
  resources :rent_a_movies, :line_movies, :carts, :movies

  devise_for :users
  get 'movie_rent/index'
  get 'message', to: 'carts#message', as: 'carts_message'

  root :to => "movie_rent#index", as: 'MovieRent'
end
