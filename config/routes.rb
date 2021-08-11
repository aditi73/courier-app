Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/dashboard', to: 'home#dashboard'
  # Orders
  resources :orders, only: [:create, :new]
  post '/search', to: 'orders#search'
end
