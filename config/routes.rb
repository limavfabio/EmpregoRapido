Rails.application.routes.draw do
  devise_for :users

  resources :job_listings
  resources :users

  root "job_listings#index"
end
