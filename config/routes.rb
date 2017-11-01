Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'welcome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

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
