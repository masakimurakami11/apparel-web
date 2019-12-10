Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'views#index'

  resources :views, only: [:index] do
    collection do
      get 'about'
      get 'form'
    end
  end

  resources :products, only: [:index]
  resources :users, only: [:index]
end