Rails.application.routes.draw do
  get 'pages/about'
  root "cards#index"

  resources :cards
  resources :supertypes
  resources :types
  resources :subtypes
  resources :cardsets
  resources :locations
end
