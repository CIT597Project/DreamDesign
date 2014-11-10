Rails.application.routes.draw do

  get 'general/ranking'

  resources :schools


  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'mylist' => 'users#mylist'
  get 'allschools' => 'schools#index'
  

  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"} do
    get 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end


  resources :my_schools
  get '/general/ranking'=>'general#ranking'
  
  
  
 
  resources :general do
    collection { post :import }
  end
  # root'general#ranking'
  
  
  
  
  
  
end
