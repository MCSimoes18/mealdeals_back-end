class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :restaurant_id
      t.string :offer
      t.integer :earn_month
      t.integer :redeem_month
      t.timestamps
    end
  end
end
