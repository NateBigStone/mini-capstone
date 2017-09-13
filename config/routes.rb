Rails.application.routes.draw do
  resources :charges
  get '/' => 'fishes#index'
  get '/fishes/new' => 'fishes#new'
  post '/fishes' => 'fishes#create'
  get '/fishes/random' => 'fishes#random'
  get '/fishes/:id' => 'fishes#show'
  get '/fishes/:id/buy' => 'fishes#buy'
  get '/fishes/:id/edit' => 'fishes#edit'
  patch '/fishes/:id' => 'fishes#update'
  delete '/fishes/:id' => 'fishes#destroy'
end
