Rails.application.routes.draw do
  
  
  resources :feverdecorators
  root to: "home#index"
  
  resources :medicalprofiles
  resources :profiles
  devise_for :users
  
  
  get 'home/index'
  
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
  
end
