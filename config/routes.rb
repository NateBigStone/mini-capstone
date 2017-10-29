Rails.application.routes.draw do
  get '/' => 'fishes#index'
  get '/fishes/new' => 'fishes#new'
  post '/fishes' => 'fishes#create'
  get '/fishes/random' => 'fishes#random'
  get '/fishes/:id' => 'fishes#show'
  get '/fishes/:id/edit' => 'fishes#edit'
  patch '/fishes/:id' => 'fishes#update'
  delete '/fishes/:id' => 'fishes#destroy'

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/checkout/:id' => 'orders#show'

  get '/cart' => 'carted_fishes#index'
  post '/cart' => 'carted_fishes#create'
  delete '/cart/:id' => 'carted_fishes#destroy'

end
