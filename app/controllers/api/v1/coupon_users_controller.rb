class Api::V1::CouponUsersController < ApplicationController

  def index
    @coupon_users = CouponUser.all
    render json: @coupon_users
  end


    def create
      @coupon_user = CouponUser.create(coupon_params)
      render json: @offer
    end

    private

    def coupon_params
      params.permit(:user_id, :offer_id, :active, :status)
    end

end
