Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/active', to: 'static_pages#active'
  get '/signup', to: 'users#new'
  resources :users
end
