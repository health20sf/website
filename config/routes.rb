Rails.application.routes.draw do
  
  
  root                'static_pages#root'
  get    'about'   => 'static_pages#about'
  get    'events' => 'static_pages#events'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
end
