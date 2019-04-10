class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # prove that the user exists in our database
      # -> lets send them a token!
      # -> the token will help us identify and validate our client

      jwt = encode_token({user_id: user.id})
      render json: {user: UserSerializer.new(user), jwt: jwt}
    else
      render json: {errors: "Please enter the correct username and password!"}
    end
  end

  def rest_login
    restaurant = Restaurant.find_by(username: params[:username])
    if restaurant && restaurant.authenticate(params[:password])
      # prove that the user exists in our database
      # -> lets send them a token!
      # -> the token will help us identify and validate our client

      jwt = encode_token({restaurant_id: restaurant.id})
      render json: {restaurant: RestaurantSerializer.new(restaurant), jwt: jwt}
    else
      render json: {errors: "Please enter the correct username and password!"}
    end
  end

  def auto_login
    # the auth flow
      # -> lets check to see IF we have headers
      # -> is there a token
      # -> decode the token
      # -> send back user
    user = curr_user

    if user
      render json: user
    else
      render json: {errors: "I dont think so"}
    end
  end

  def rest_auto_login
    # the auth flow
      # -> lets check to see IF we have headers
      # -> is there a token
      # -> decode the token
      # -> send back user
    restaurant = curr_restaurant

    if restaurant
      render json: restaurant
    else
      render json: {errors: "I dont think so"}
    end
  end


end
