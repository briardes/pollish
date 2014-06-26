Rails.application.routes.draw do
  resources :polls do
    resources :options
  end
end
