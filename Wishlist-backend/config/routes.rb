Rails.application.routes.draw do
  resources :wishlists
  resources :rates
  resources :gifts
  resources :gift_details
  resources :profiles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end