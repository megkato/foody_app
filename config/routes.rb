Rails.application.routes.draw do
  devise_for :users
  root "sells#index"
  resources :users, only: [:edit, :update]
  resources :sells, only: [:index]
end
