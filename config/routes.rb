Rails.application.routes.draw do
  root 'events#home'
  resources :users
  resources :favorites
end
