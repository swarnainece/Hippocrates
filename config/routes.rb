Rails.application.routes.draw do
  
  
  resources :sagas
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
  
  
  
  
  resources :profiles do
     
         resources :sagas
  end
  
  
   get '/yoga' => 'yogas#Input'
   
   get  '/validate' => 'yogas#Output'
   post '/validate' => 'yogas#Output'
   
   
   
   get  '/composite' => 'yogas#Composite'
   post '/composite' => 'yogas#Composite'
   
   get '/immunization' => 'immunizations#Input'
   get '/immunization' => 'immunizations#Output'
   post '/immunization' => 'immunizations#Output'
   

end
