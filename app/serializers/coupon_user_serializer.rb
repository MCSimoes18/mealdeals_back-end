class CouponUserSerializer < ActiveModel::Serializer
  attributes :offer_id, :user_id, :active, :status

  belongs_to :user
  belongs_to :offer
end
