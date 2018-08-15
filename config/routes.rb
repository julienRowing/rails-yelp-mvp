Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "estaurants#new"
  # post "restaurants", to: "estaurants#create"
  # get "restaurants/:id", to: "estaurants#show"
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [ :new, :create ]
  end
end
