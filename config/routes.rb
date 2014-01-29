StoreManagementApp::Application.routes.draw do
  
  resources :products, :categories
  
  get '/site', to: 'site#index'

  root to: 'site#index'
end
