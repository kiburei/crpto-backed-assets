Rails.application.routes.draw do
  resources 'listings'
  root 'index#index'
end
