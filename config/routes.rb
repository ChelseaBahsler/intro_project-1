Rails.application.routes.draw do
  get "pages/about"
  root "cards#index"
  resources :cards, only: %i[index show]
  resources :supertypes, only: %i[index show]
  resources :types, only: %i[index show]
  resources :subtypes, only: %i[index show]
  resources :cardsets, only: %i[index show]
end
