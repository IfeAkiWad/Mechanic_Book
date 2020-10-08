Rails.application.routes.draw do
  get '/signup', to: 'mechanics#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :mechanics
  
  resources :vehicles do
    resources :repairs
  end
    
  resources :repairs

  get '/auth/:provider/callback', to: 'sessions#omniauth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
