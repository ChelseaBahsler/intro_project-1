Rails.application.routes.draw do
  get 'card/index'
  get 'card/show'
  get 'locations/index'
  root "cards#index"

  resources :cards
  resources :supertypes
  resources :types
  resources :subtypes
  resources :weaknesses
  resources :cardsets
end
