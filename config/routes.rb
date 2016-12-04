Rails.application.routes.draw do
  
  
  root "home#index"
  
  resources :feverdecorators
  root to: "home#index"
  
  resources :medicalprofiles
  resources :profiles
  devise_for :users
  
  
  get 'home/index'
  
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  
  get '/infants' => 'infants#infantdoseofparacetamol'
  
  
  
  
  get '/dose', :controller=>'infants', :action=>'dose'
  
  post '/dose', :controller=>'infants', :action=>'dose'

end
