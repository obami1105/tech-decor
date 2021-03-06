Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :users, only: [:edit, :update]
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
end