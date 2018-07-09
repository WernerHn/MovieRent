class AddQuantityToLineMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :line_movies, :quantity, :integer, default: 1
  end
end
