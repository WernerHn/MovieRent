class MovieRentController < ApplicationController
  def index
    @movies = Movie.order(:title)
    @cart = current_cart
  end
end



