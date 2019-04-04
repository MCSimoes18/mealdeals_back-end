class Offer < ApplicationRecord
  belongs_to :restaurant
  has_many :coupon_users
  has_many :users, through: :coupon_users
end
