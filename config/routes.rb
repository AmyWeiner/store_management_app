StoreManagementApp::Application.routes.draw do
  
  get "sessions/new"
  get "sessions/destroy"
  get "users/show"
  get "users/create"
  resources :products, :categories, :users, :sessions
  
  get '/site', to: 'site#index'

  root to: 'site#index'

  get '/signup' => 'users#new'

  delete '/signout', to: 'sessions#destroy'

  get'/signin' => 'sessions#new'
  
end
