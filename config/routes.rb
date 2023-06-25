Rails.application.routes.draw do
  resources :inscriptions
  resources :clubs do
    member do
      get 'inscription'
      post 'create_inscription'
    end
  end
  root 'clubs#index'
end
