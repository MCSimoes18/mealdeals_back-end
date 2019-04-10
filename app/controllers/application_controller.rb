class ApplicationController < ActionController::API
  def encode_token(payload)
  JWT.encode(payload, Rails.application.credentials.jwt[:key])
  # payload {user_id: 1}
  # => enaj.fewfwaf.dfadf
end

def decode_token
  # if headers -> let's decode it else return nil
  # JWT.decode()
  # no need to check if there are headers because of the begin rescue!!
  begin
    JWT.decode(auth_headers, Rails.application.credentials.jwt[:key])
  rescue
    nil
  end
end

def auth_headers
  # check for headers
  request.headers["Authorization"]
  # returns the JWT
end

def curr_user
  user_id = decode_token[0]["user_id"]
  User.find(user_id)
  # who is the current user maybe we don't need to authorize the route but it might be nice to know
  # who the user is to see whether or not they can validly access something
end

def curr_restaurant
  restaurant_id = decode_token[0]["restaurant_id"]
  Restaurant.find(restaurant_id)
  # who is the current user maybe we don't need to authorize the route but it might be nice to know
  # who the user is to see whether or not they can validly access something
end

def rest_logged_in
  # is there a curr_user
  !!curr_restaurant
end


def logged_in
  # is there a curr_user
  !!curr_user
end

def authorized
  # if there is a curr_user meaning they've been correctly validated
  # allow them in our application
  # otherwise send an error
  render json: {errors: 'Please log in'} unless logged_in
end
end
