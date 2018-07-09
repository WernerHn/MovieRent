class Cart < ApplicationRecord
  has_many :line_movies, dependent: :destroy

  def add_movie(movie_id)
    current_movie = line_movies.find_by_movie_id(movie_id)
    if current_movie
      current_movie.quantity += 1
    else
      current_movie = line_movies.build(movie_id: movie_id)
    end
    current_movie
  end

  def total_price
    line_movies.to_a.sum { |movie|
      movie.total_price}
  end




  end
