Rails.application.routes.draw do
  get 'location/index'
  get 'tag/index'
  get 'about/index'
  get 'comment/index'
  get 'photo/index'
  # get 'welcome/index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :pages

  get '/static/:permalink', to: 'pages#permalink', as: 'permalink'

  resources :about, only: :index
  # get /appointments, to: 'appointments#index'

  resources :album, only: %i[index show]
  # ^ This command creates the same routes as the following two:
  # get '/houses', to: 'houses#index'
  # get '/houses/:id', to: 'houses#show', id: /\d+/

  resources :photo, only: :show
  # get '/students/:id', to: 'students#show', id: /\d+/

  resources :comment, only: :show
  # get '/teachers/:id', to: 'teachers#show', id: /\d+/

  root to: 'album#index'


end
