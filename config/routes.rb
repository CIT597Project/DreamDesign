Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'help' => 'static_pages#help'
  get 'signup' => 'users#new'
  
  devise_for :users
  resources :schoollists
  root 'static_pages#home'
end
