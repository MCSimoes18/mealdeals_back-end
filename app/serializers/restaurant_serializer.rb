class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :alias, :yelp_id, :image_url, :url, :display_phone, :phone, :price, :rating, :review_count, :address1, :address2, :address3, :city, :zip_code, :latitude, :longitude

  has_many :offers
end
