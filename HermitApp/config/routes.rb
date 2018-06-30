Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  post 'users/create' => 'users#create'

  post 'sessions/create' => 'sessions#create'

  get 'genres' => 'genres#index'

  post 'genres/create' => 'genres#create'

  patch 'genres/:id/clicked' => 'ideas#clicked'

  get 'logout' => 'sessions#delete'
end
