Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'help' => 'static_pages#help'
  get 'mylist' => 'users#mylist'
  get 'profile' => 'users#profile'
  
  devise_for :users
  resources :schoollists
  resources :my_schools
  
end
