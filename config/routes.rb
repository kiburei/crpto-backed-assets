Rails.application.routes.draw do
  resources 'listings'
  resources 'users'
  root 'index#index'
  get 'transactions', :to => 'transactions#listing_to_user', :as => :listing_to_user
end
