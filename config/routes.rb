Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  get '/about', to: 'home#about'
  get '/new', to: 'home#new'

  resources :home, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
