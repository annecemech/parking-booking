Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :parking_spaces, only: [:index] do
    resources :bookings, only: [:create]
  end

  namespace :my do
    resources :bookings, only:[:index, :destroy]
  end

end
