Rails.application.routes.draw do
  get 'help' => 'static_pages#help'
  
  get 'signup' => 'users#new'

  root 'static_pages#home'
  
  resources :users 
end
