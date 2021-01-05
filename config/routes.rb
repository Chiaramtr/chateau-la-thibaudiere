# config/routes.rb
Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact do
    resources :contact, only: [:new, :create]
  end

  # Generic syntax:
  # verb 'path', to: 'controller#action'
end
