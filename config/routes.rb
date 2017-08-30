Rails.application.routes.draw do
  get '/all_fish_url' => 'fishes#all_fish_action'
  get '/buy_fish_url' => 'fishes#buy_fish_action'
end
