Rails.application.routes.draw do

  get 'general/ranking'

  resources :schools
  
  resources :my_schools
  
  resources :schools do
    resources :reviews
  end


  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'mylist' => 'users#mylist'
  get 'allschools' => 'schools#index'
  post 'addSchool' => 'my_schools#addSchool'
  

  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"} do
    get 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  get '/general/ranking'=>'general#ranking'
  
  
  
 
  resources :general do
    collection { post :import }
  end
  # root'general#ranking'
  
  get 'index'=>'general#index'
  
  
  
  
end
