Rails.application.routes.draw do
  resources :clinicas_veterinarias
  resources :clinicas_veterinaria
  resources :clinicas_veterinaris
  resources :estados
  resources :ongs
  resources :users, only: [:new, :create, :show]
  get 'home/index'
  get 'entrar', to:'sessions#new'
  post 'entrar', to:'sessions#create'
  delete 'sair', to:'sessions#destroy'
  root to:"home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
