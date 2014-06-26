Rails.application.routes.draw do
  resources :controllers

  resources :polls do
    resources :options
  end
end
