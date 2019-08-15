Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/login', to: 'sessions#create'
  # get '/login', to: 'sessions#show'
  # get '/login', to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users
  root 'sessions#new'
end
