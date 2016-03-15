class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :movie_length
      t.string :director
      t.string :category
      t.integer :rating

      t.timestamps null: false
    end
  end
end
