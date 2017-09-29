class FishesController < ApplicationController
  def index
    @title = "All The Fish"
    @fish = Fish.all
    sort_attribute = params[:sort]
    order_attribute = params[:order]
    discount_attribute = params[:discount]
    category_attribute = params[:category]
    if order_attribute && sort_attribute
      @fish = Fish.all.order(sort_attribute => order_attribute)
    elsif sort_attribute 
      @fish = Fish.all.order(sort_attribute)
    end
    if discount_attribute
      @fish = Fish.all.where("price < ?", 5)
    end
    if category_attribute
      @fish = Category.find_by(name: category_attribute).fishes
    end  
  end
  def new
    redirect_to "/" unless current_user && current_user.admin
    @title = "Create a New Fish"
    @fish = Fish.new
    @suppliers = Supplier.all
  end
  def create
  redirect_to "/" unless current_user && current_user.admin
  @fish = Fish.new(
                     name: params[:name],
                     price: params[:price],
                     image: params[:image],
                     description: params[:description],
                     supplier_id: params[:supplier_id]
                    )
    if @fish.save
      flash[:success] = "Fish Successfully Created"
      redirect_to "/fishes/#{@fish.id}"
    else
      @suppliers = Supplier.all
      @errors = @fish.errors.full_messages
      render "new.html.erb"
    end
  end 
  def show
    @fish = Fish.find_by(id: params[:id])
    @title = @fish.name
  end
  def edit
    redirect_to "/" unless current_user && current_user.admin
    @fish = Fish.find_by(id: params[:id])
    @title = "Edit the Fish"
  end
  def update
    redirect_to "/" unless current_user && current_user.admin
    @fish = Fish.find(params[:id])
    @fish.assign_attributes(
                     name: params[:name],
                     price: params[:price],
                     image: params[:image],
                     description: params[:description]
                    )
    if @fish.save
      flash[:success] = "Fish Successfully Updated"
      redirect_to "/fishes/#{@fish.id}"
    else
      @suppliers = Supplier.all
      @errors = @fish.errors.full_messages
      render "edit.html.erb"
    end
  end
  def destroy
    redirect_to "/" unless current_user && current_user.admin
    fish = Fish.find(params[:id])
    fish.destroy
    flash[:success] = "Fish Successfully Deleted"
    redirect_to "/../"
  end  
  def random
    fish_id = Fish.all.sample.id
    redirect_to "/fishes/#{fish_id}"
  end
end

