Rails.application.routes.draw do

  root 'pages#home'

  resources :coaches
  resources :players
  resources :games
  resources :pages
  resources :teams

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get  'logout', to: 'sessions#destroy'
  delete  'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
