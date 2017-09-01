Rails.application.routes.draw do
  get '/' => 'fishes#index'
  get "/fishes/:id" => "fishes#show"
end
