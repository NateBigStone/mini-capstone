class FishesController < ApplicationController
  def index
    @title = "All The Fish"
    @fish = Fish.all
  end
  def show
    @fish = Fish.find_by(id: params[:id])
    @title = @fish.name
  end
end
