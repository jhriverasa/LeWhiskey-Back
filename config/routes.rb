Rails.application.routes.draw do
  resources :turns
  resources :girls
  resources :invoices
  resources :products
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
