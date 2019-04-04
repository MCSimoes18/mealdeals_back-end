class CreateCouponUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :coupon_users do |t|
      t.integer :offer_id
      t.integer :user_id
      t.boolean :active
      t.string :status

      t.timestamps
    end
  end
end
