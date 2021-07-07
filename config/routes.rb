Rails.application.routes.draw do
  get "about_us", to: "about#index", as: :about
  root to: "main#index"

end
