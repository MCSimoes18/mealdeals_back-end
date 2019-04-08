class CouponUserSerializer < ActiveModel::Serializer
  attributes :id, :offer_id, :user_id, :active, :status

  belongs_to :user
  belongs_to :offer
end
