# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants, :offers, :coupon_users, :users
      get '/yelp', to: 'yelp#fetch'
      post '/search', to: 'yelp#search'
    end
  end
end
