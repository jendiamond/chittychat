Rails.application.routes.draw do
  root 'rooms#index'
  resources :rooms, only: [:index, :show]
  resources :messages, only: [:create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
