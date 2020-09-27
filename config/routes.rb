Rails.application.routes.draw do
  resources :ongs
  resources :users, only: [:new, :create]
  get 'home/index'

  root to:"home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
