Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}

  # devise_scope :user do #ログイン関係のパス名をloginとlogoutに変更
  #   get "sign_up", to: "users/registrations#new"
  #   post "", to: "users/registrations#create"
  # end
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
      patch 'purchase'
      post 'pay'
      get 'history'
      post 'create', to: "products#create", as: :create_order
    end
    resources :pays, only: [:index] do
      collection do
        post 'pay'
        get 'done'
      end
    end
  end
  resources :users, only: [:index] do
    collection do
      get 'address'
      post 'address_create'
      get 'card'
      post 'card_create'
    end
  end
end