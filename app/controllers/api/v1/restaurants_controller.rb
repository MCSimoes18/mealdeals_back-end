class Api::V1::RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:update]

    def index
      @restaurants = Restaurant.all
      render json: @restaurants
    end

    def create
      @restaurant = Restaurant.create(restaurant_params)
      render json: @restaurant
    end

  private

  def restaurant_params
    params.permit(
    :username,
    :password,
    :name,
    :alias,
    :yelp_id,
    :image_url,
    :url,
    :display_phone,
    :phone,
    :price,
    :rating,
    :review_count,
    :address1,
    :address2,
    :address3,
    :city,
    :zip_code,
    :latitude,
    :longitude
    )
  end

end
