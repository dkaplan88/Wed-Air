Air::Application.routes.draw do
  
  resources :reservations
  resources :sessions, only: [:new,:create]

  resources :users

  resources :flights, only: [:index, :show]
  root to: 'flights#index'
  
  get '/mockup' => 'pages#home', :as => :mockup
  get '/help' => 'pages#help', :as => :help
  get "logout" => "sessions#destroy", :as => :logout
  
end
