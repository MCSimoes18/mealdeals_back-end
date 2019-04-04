class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :restaurant_id
      t.string :offer
      t.string :earn_month
      t.string :redeem_month
      t.timestamps
    end
  end
end
