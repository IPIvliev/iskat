Rails.application.routes.draw do
  root 'static_pages#index'
  
  resources :articles

# Users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  get "omniauth_callbacks/facebook"
  get "omniauth_callbacks/vkontakte"

# Страницы главного меню
  get "/index.html", to: "static_pages#index"
  get 'static_pages/index'
  get 'static_pages/about'
  get "/contacts.html", to: "static_pages#contacts"

end
