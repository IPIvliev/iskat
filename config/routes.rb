Rails.application.routes.draw do
  resources :articles

  root 'static_pages#index'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/contacts'

end
