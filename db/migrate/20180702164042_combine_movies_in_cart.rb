class CombineMoviesInCart < ActiveRecord::Migration[5.2]

  def change
  end

  def up
    Cart.all.each do |cart|
      sums = cart.line_movies.group(:movie_id).sum(:quantity)
      sums.each do |movie_id, quantity|
        if quantity > 1
          cart.line_movies.where(movie_id: movie_id).delete_all
          cart.line_movies.create(movie_id: movie_id, quantity: quantity)
        end
      end
    end
  end

  def down
    LineMovie.where("quantity>1").each do (line_movie)
      line_movie.quantity.times do
        LineMovie.create(
            cart_id: line_movie.cart_id,
                         movie_id: line_movie.movie_id,
                          quantity: 1
        )

      end
      line_movie.destroy
    end
  end
end
