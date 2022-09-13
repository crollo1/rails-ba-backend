Rails.application.routes.draw do
    
  # API endpoints for Secret model
  # - to be used by React frontend AJAX requests

  get '/airplanes' => 'airplanes#index'       # Airplane.all
  post '/airplanes' => 'airplanes#create'     # Airplane.create

end
