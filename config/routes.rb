Rails.application.routes.draw do
  get 'users/profile'
  resources :posts do
    resources :comments 
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  devise_for :users, controllers: { 
    session: 'users/session',
    registrations: 'users/registrations'
  }
  get'/u/:id', to:'users#profile', as: 'user'

  root'pages#home'
end
