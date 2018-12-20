Rails.application.routes.draw do
  root to: 'subsidies#index'

  resources :subsidies, only: [ :index ] do
    member do
      resources :requests, only: [ :new, :create ]
    end
  end
end
