Rails.application.routes.draw do
  resources :vehicles do
    resources :repairs
    
  resources :repairs
  resources :mechanics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
