Rails.application.routes.draw do
  resources 'listings'
  resources 'users'
  root 'index#index'
  get 'transactions/listing', :to => 'transactions#listing_to_user', :as => :listing_to_user
  get 'transactions/user', :to => 'transactions#user_to_listing', :as => :user_to_listing
end
