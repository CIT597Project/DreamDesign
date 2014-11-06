Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'mylist' => 'users#mylist'
  
  devise_for :users
 
  resources :my_schools
  
end
