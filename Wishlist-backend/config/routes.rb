Rails.application.routes.draw do
  resources :wishlists
  resources :rates
  resources :gifts
  resources :gift_details
  resources :profiles
  post "/login", to: "sessions#create"
  get "/auth", to: "profiles#show"
  delete "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
