class FishesController < ApplicationController
  $fish_all = Fish.all
  $fish_total = Fish.count
  def index
    @title = "All The Fish"
    @fish = Fish.all
    sort_attribute = params[:sort]
    order_attribute = params[:order]
    discount_attribute = params[:discount]
    if order_attribute && sort_attribute
      @fish = Fish.all.order(sort_attribute => order_attribute)
    elsif sort_attribute 
      @fish = Fish.all.order(sort_attribute)
    end
    if discount_attribute
      @fish = Fish.all.where("price < ?", 5)
    end
  end
  def new
    @title = "Create a New Fish"
  end
  def create
  fish = Fish.new(
                     name: params[:name],
                     price: params[:price],
                     image: params[:image],
                     description: params[:description]
                    )
  fish.save
  flash[:success] = "Fish Successfully Created"
  redirect_to "/fishes/#{fish.id}"
  end 
  def show
    @fish = Fish.find_by(id: params[:id])
    @title = @fish.name
  end
  def edit
    @fish = Fish.find_by(id: params[:id])
    @title = "Edit the Fish"
  end
  def update
    fish = Fish.find(params[:id])
    fish.assign_attributes(
                     name: params[:name],
                     price: params[:price],
                     image: params[:image],
                     description: params[:description]
                    )
    fish.save
    flash[:success] = "Fish Successfully Updated"
    redirect_to "/fishes/#{fish.id}"
  end
  def destroy
    fish = Fish.find(params[:id])
    fish.destroy
    flash[:success] = "Fish Successfully Deleted"
    redirect_to "/../"
  end  
end
