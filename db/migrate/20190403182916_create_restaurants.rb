class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :image_url
      t.string :url
      t.integer :review_count
      t.integer :rating
      t.string :categories
      t.float :location

      t.timestamps
    end
  end
end
