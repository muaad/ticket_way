Rails.application.routes.draw do
  resources :events

  resources :categories

  resources :accounts

  root to: 'visitors#index'
  devise_for :users
end
