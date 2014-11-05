Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'help' => 'static_pages#help'
  get 'signup' => 'users#new'
  get 'mylist' => 'users#mylist'
  
  devise_for :users
  resources :schoollists
  resources :my_schools
  
end
