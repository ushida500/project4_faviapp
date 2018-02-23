Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/edit'

  get 'sessions/update'

  get 'sessions/destroy'

  root 'users#home'
  resources :users
  resources :favorites
end
