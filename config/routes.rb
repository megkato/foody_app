Rails.application.routes.draw do
  devise_for :users
  root "sells#index"
  resources :users, only: [:edit, :update]
  resources :logout, only: [:index]
  resources :sells, only: [:index]
  resources :mypage, only: [:index]
end
