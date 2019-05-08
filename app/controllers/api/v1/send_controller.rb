require 'twilio-ruby'
class Api::V1::SendController < ApplicationController

  def index
  end


  def text
    number_to_send_to = params[:phoneNumber]
    offer = params[:offer]
    rest = params[:rest]
    date = params[:date]

    twilio_sid = TWILIO_SID
    twilio_token = TWILIO_TOKEN
    twilio_phone_number = TWILIO_PHONE

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.api.account.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => "Thanks for using Meal Deals! Your #{offer} coupon for #{rest} has been activated for today's date: #{date}. Show this text to your server and start eating!"
    )
  end
end
