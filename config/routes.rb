Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/resume', to: 'pages#resume'
  patch "/experiences/:id", to: "experiences#certify", as: :certify

  resources :users, only: [:create, :edit, :update, :show, :index] do
    resources :experiences, only: [:create, :destroy]
    resources :roles, only: [:create, :update, :destroy]
  end
  resources :companies, only: [:create, :update, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
