class Api::V1::RestaurantsController < ApplicationController
    before_action :find_restaurant, only: [:update]

    def index
      @restaurants = Restaurant.all
      render json: @restaurants
    end

    # def update
    #   @restaurant.update(restaurant_params)
    #   if @restaurant.save
    #     render json: @restaurant, status: :accepted
    #   else
    #     render json: { errors: @restaurant.errors.full_messages }, status: :unprocessible_entity
    #   end
    # end
  #
  #   private
  #
  #   def restaurant_params
  #     params.permit(:title, :content)
  #   end
  #
  #   def find_restaurant
  #     @restaurant = Restaurant.find(params[:id])
  #   end
  # end

end
