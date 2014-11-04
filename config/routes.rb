Rails.application.routes.draw do

  get 'static_pages/home'

  get 'static_pages/help'

  root 'users#index'
  
  resources :users
  resources :microposts 
end
