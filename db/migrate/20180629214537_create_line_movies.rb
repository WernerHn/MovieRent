class CreateLineMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :line_movies do |t|
      t.integer :movie_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
