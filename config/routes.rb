Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/resume', to: 'pages#resume'

  resources :users, only: [:create, :edit, :update, :show, :index] do
    resources :experiences, only: [:create, :destroy]
    resources :roles, only: [:create, :update, :destroy]
    resources :companies, only: [:create]
  end

  resources :companies, only: [:update, :destroy]
  
  resources :experiences, only: [:update] do
    member do
      patch :certify
    end
  end

  resources :chatrooms, only: [:create, :show] do
    resources :messages, only: :create
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
