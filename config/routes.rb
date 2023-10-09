Rails.application.routes.draw do
  root "cards#index"

  resources :cards
  resources :supertypes
  resources :types
  resources :subtypes
  resources :cardsets
  resources :locations
end
