Rails.application.routes.draw do
  get 'login'  => 'users#new'

  root to: 'static_pages#root'
end
