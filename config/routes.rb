Rails.application.routes.draw do
    
  
  # API endpoints for Secret model
  # - to be used by React frontend AJAX requests

  get '/airplanes' => 'airplanes#index'       # Airplane.all
  post '/airplanes' => 'airplanes#create'     # Airplane.create
  get '/flights/:origin/:destination' => 'flights#show' # Flight search results

  resources :airplanes
  resources :flights
  resources :user
  resources :reservations


end
