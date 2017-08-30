class FishesController < ApplicationController
  def all_fish_action
    @fish = Fish.all
   # render html file
  end
end
