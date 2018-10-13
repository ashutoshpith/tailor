Rails.application.routes.draw do
  resources :repair_problems
  resources :repairs
  resources :problems
  resources :models
  resources :companies
  root 'repairs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
