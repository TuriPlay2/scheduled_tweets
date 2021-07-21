Rails.application.routes.draw do
  get "about", to: "about#index"
  
  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"


  post "sign_up", to: "registrations#create" 
  get "sign_up", to: "registrations#new"
  

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  
  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#create"
  get "password/reset/edit", to: "password_reset#edit"
  patch "password/reset/edit", to: "password_reset#update"


 
  
  get "/auth/twitter/callback", to: "omniauth_callback#twitter"
  

  resources :twitter_accounts
  resources :tweets
  



  root to: "main#index"
end
