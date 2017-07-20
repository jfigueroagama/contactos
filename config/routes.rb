Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'contacts#index'
  resources :contacts

  get '/signup', to: 'users#new'
  resources :users
end
