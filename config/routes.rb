# config/routes.rb
Rails.application.routes.draw do
  resources :places
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  post'contact', to: 'pages#contact'
  get "infos", to: 'pages#infos', as: :infos

  # Generic syntax:
  # verb 'path', to: 'controller#action'
end
