Rails.application.routes.draw do
  resources :sanctioned_entities
  resources :locations
  resources :company_directors
  resources :directors
  resources :companies
  resources :messages, only: [:new]
  resources :users, only: [:index, :show, :create, :edit, :update, :delete]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # users
  get "/signup", to: 'users#new', as: 'signup'

  # session functionality
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'
end
