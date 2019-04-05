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
    params.permit(:name)
  end

end
