Rails.application.routes.draw do
  
  root to: 'static_pages#root'
  get '/about', to: 'static_pages#about'
  get '/events', to: 'static_pages#events'
  get '/signup', to: 'users#new'
  resources :users
end
