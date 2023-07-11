Rails.application.routes.draw do
  namespace :admin do
  get 'students/take_params', to: 'students#take_params'
  get 'users/index'
  get 'students/complete', to: 'students#complete'
  get 'students/new', to: 'students#new'
  get 'students/edit', to: 'students#edit'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :sessions
  resources :students
end
  
  resources :users
end
