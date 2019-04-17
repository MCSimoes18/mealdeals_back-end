class Api::V1::CouponUsersController < ApplicationController

  def index
    @coupon_users = CouponUser.all
    render json: @coupon_users
  end

    def create
      @coupon_user = CouponUser.create(coupon_params)
      render json: @coupon_user
    end

    def show
      @coupon_user = CouponUser.find(params[:id])
      render json: @coupon_user
    end

    def update
      @coupon_user = CouponUser.find(params[:id])
      @coupon_user.update(coupon_params)
      render json: @coupon_user
    end

    private

    def coupon_params
      params.permit(:user_id, :offer_id, :active, :status)
    end

end
