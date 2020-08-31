Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'sending_destinations', to: 'users/registrations#newSendingDestination'
    post 'sending_destinations', to: 'users/registrations#createSendingDestination'
  end
  root "sells#index"
  resources :users, only: [:edit, :update]
  resources :logout, only: [:index]
  resources :sells, only: [:index]
  resources :mypage, only: [:index]
end
