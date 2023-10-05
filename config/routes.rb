Rails.application.routes.draw do
  get 'locations/index'
  root "cards#index"

  resources :cards
  resources :supertypes
  resources :types
  resources :subtypes
  resources :weaknesses
  resources :cardsets
end
