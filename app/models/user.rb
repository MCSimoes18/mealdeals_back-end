class User < ApplicationRecord
  has_many :coupon_users
  has_many :offers, through: :coupon_users
  has_many :restaurants, through: :coupon_users

	has_secure_password
  # validates :username, presence: true
  # validates :password, presence: true
  # validates :username, uniquness: true
  # validates :phone, length: { is: 10 }
end
