class OfferSerializer < ActiveModel::Serializer
  attributes :id, :restaurant_id, :offer, :earn_month, :redeem_month

  belongs_to :restaurant
  has_many :coupon_users
end
