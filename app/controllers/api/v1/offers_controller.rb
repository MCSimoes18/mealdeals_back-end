class Api::V1::OffersController < ApplicationController

  def index
    @offers = Offer.all
    render json: @offers
  end

  def create
    @offer = Offer.create(offer_params)
    render json: @offer
  end

  private

  def offer_params
    params.permit(:restaurant_id, :offer, :earn_month, :redeem_month)
  end


end
