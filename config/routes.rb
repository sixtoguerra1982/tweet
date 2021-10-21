Rails.application.routes.draw do
  # resources :tweets
  # devise_for :users

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  get 'pages/index'
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
