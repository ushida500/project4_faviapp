Rails.application.routes.draw do
  get 'favorites/index'

  get 'favorites/show'

  get 'favorites/new'

  get 'favorites/create'

  get 'favorites/edit'

  get 'favorites/update'

  get 'favorites/destroy'

  root 'users#home'
  resources :users
  resources :favorites
end
