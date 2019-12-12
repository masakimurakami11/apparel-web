Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'views#index'

  resources :views, only: [:index] do
    collection do
      get 'news'
      get 'about'
    end
  end

  resources :products, only: [:index, :show, :destroy] do
    collection do
      get 'cart'
      post 'create', to: "products#create", as: :create_order
    end
  end
  resources :users, only: [:index]
end