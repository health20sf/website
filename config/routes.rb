Rails.application.routes.draw do

  root                'static_pages#root'
  get    'privacy' => 'static_pages#privacy'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get 'password_resets/new'
  get 'password_resets/edit'

  resources :users do 
    resources :profiles
  end
  resources :events
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
end
