require 'twilio-ruby'
class Api::V1::SendController < ApplicationController

  def index
  end


  def text
    number_to_send_to = params[:phoneNumber]
    offer = params[:offer]
    rest = params[:rest]
    date = params[:date]

    twilio_sid = 'AC046c4a5d85f3c317cceb88c945cd55bc'
    twilio_token = 'c79a0324df737f691113b254b42a4742'
    twilio_phone_number = '6314434561'

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.api.account.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{number_to_send_to}",
      :body => "Thanks for using Meal Deals! Your #{offer} coupon for #{rest} has been activated for today's date: #{date}. Show this text to your server and start eating!"
    )
  end

end

  # Download the twilio-ruby library from twilio.com/docs/libraries/ruby

  # account_sid = 'AC046c4a5d85f3c317cceb88c945cd55bc'
  # auth_token = 'c79a0324df737f691113b254b42a4742'
  # client = Twilio::REST::Client.new(account_sid, auth_token)
  #
  # from = '+16314434561' # Your Twilio number
  # to = '+16312559815' # Your mobile phone number
  #
  #
  # def text
  # test = params[:phoneNumber]
  # sms = @client.send.create(
  # from: from,
  # to: to,
  # body: "Hey friend! #{test}"
  # )
  # end
  #
  # private
  #
  #   def boot_twilio
  #     account_sid = Rails.application.secrets.twilio_sid
  #     auth_token = Rails.application.secrets.twilio_token
  #     @client = Twilio::REST::Client.new account_sid, auth_token
  #   end
  # end
