Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'general/ranking'
=======
  resources :schools
>>>>>>> Stashed changes

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'mylist' => 'users#mylist'
  get 'allschools' => 'schools#index'
  
<<<<<<< Updated upstream
  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks"} do
    get 'sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
=======
  devise_for :users, :controllers => {:registrations => "users/registrations"}
>>>>>>> Stashed changes
  resources :my_schools
  get '/general/ranking'=>'general#ranking'
end
