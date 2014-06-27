Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :polls do
    resources :options, except: [:destroy]do
      put 'add_vote', on: :member
    end
  end
end
