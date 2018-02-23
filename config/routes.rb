Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :favorites
  resources :sessions, only: [:new, :create]
  
  delete '/logout' => 'sessions#destroy', as: :logout
end
