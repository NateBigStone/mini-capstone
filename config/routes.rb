Rails.application.routes.draw do
  get '/' => 'fishes#index'
  get '/fishes/new' => 'fishes#new'
  post '/fishes' => 'fishes#create'
  get '/fishes/:id' => 'fishes#show'
  get '/fishes/:id/edit' => 'fishes#edit'
  patch '/fishes/:id' => 'fishes#update'
  delete '/fishes/:id' => 'fishes#destroy'
end
