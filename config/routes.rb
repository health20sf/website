Rails.application.routes.draw do

  root                'static_pages#root'

  get    'register' => 'static_pages#register'

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get 'password_resets/new'
  get 'password_resets/edit'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
