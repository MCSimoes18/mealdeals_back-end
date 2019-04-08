class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :email, :phone, :location

  has_many :coupon_users
end
