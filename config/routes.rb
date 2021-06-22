Rails.application.routes.draw do
  resources :inscriptions
  resources :meets
  resources :events
  resources :speakers
  resources :themes
  resources :categories
  devise_for :users

  root to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
