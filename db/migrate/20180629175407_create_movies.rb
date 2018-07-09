class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision:8, scale: 2

      t.timestamps
    end
  end
end
