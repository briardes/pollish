Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  # root 'home#new'

  resources :polls do
    resources :options
  end
end
