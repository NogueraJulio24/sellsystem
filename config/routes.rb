Rails.application.routes.draw do
  root 'welcome#index'

  resources :sell_details
  resources :sells
  resources :products
  resources :sell_prices
  resources :suppliers
  resources :clients
  resources :addresses
  resources :cities
  resources :departments
  resources :countries
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
