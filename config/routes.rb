Rails.application.routes.draw do
  root "cards#index"

  resources :cards
  resources :supertypes
  resources :types
  resources :subtypes
  resources :weaknesses
  resources :sets
end
