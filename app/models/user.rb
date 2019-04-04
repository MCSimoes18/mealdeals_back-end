class User < ApplicationRecord
  has_many :coupon_users
  has_many :offers, through: :coupon_users
  has_many :restaurants, through: :coupon_users
end
