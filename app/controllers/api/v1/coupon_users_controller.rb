class Api::V1::CouponUsersController < ApplicationController

  def index
    @coupon_users = CouponUser.all
    render json: @coupon_users
  end

end
