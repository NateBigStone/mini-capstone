class FishesController < ApplicationController
  def all_fish_action
    @title = "All The Fish"
    @fish = Fish.all
    @test = "test string"
    render "all_fish.html.erb"
  end
  def buy_fish_action
    @title = "Buy Dis Fish"
    render "buy_fish.html.erb"
  end
end
