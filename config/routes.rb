Air::Application.routes.draw do
  
  resources :sessions, only: [:new,:create]

  resources :users

  get "/flights" => "flights#index"

  root to: 'flights#index'
  
  get '/mockup' => 'pages#home', :as => :mockup
  get '/help' => 'pages#help', :as => :help
  get "logout" => "sessions#destroy", :as => :logout
  
end
