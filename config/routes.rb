Rails.application.routes.draw do
  get "pages/about"
  root "cards#index"
  resources :cards, only: %i[index show]
  resources :supertypes, only: %i[index]
  resources :types, only: %i[index]
  resources :subtypes, only: %i[index]
  resources :cardsets, only: %i[index show]
end
