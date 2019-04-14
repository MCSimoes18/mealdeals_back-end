# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants, :offers, :coupon_users, :users
      get '/yelp', to: 'yelp#fetch'
      post '/search', to: 'yelp#search'
      get '/send', to: 'send#fetch'
      post '/text', to: 'send#text'

      # route to login
      post "/login", to: "auth#login"

      # login on refresh
      get '/auto_login', to: "auth#auto_login"

      # route to login
      post "/rest_login", to: "auth#rest_login"

      # login on refresh
      get '/rest_auto_login', to: "auth#rest_auto_login"
    end
  end
end
