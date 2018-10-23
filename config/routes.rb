Rails.application.routes.draw do
  resources :sanctioned_entities
  resources :locations
  resources :company_directors
  resources :directors
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
