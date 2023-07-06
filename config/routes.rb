Rails.application.routes.draw do
  get 'students/index'
  namespace :admin do
  get 'users/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :sessions
end
  resources :students
  resources :users
end
