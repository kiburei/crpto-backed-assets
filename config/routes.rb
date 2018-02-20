Rails.application.routes.draw do
  resources 'listings'
  resources 'users'
  root 'index#index'
end
