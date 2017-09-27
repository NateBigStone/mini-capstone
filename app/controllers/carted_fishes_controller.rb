class CartedFishesController < ApplicationController
  def index
    @carted_fish = current_user.carted_fishes.where(status: "carted")
    if @carted_fish.length < 1
      flash[:warning] = "The Cart is Empty"
      redirect_to "/"
    end    
  end  

  def create
      carted_fish = CartedFish.new(
                     user_id: current_user.id,
                     fish_id: params[:fish_id],
                     quantity: params[:quantity],
                     status: "carted"
  #                   order_id: params[:order_id],
                    )
  carted_fish.save
  flash[:success] = "Successfully Added to Cart"
  redirect_to "/cart"
  end  

  def destroy
    carted_fish = CartedFish.find(params[:id])
    carted_fish.update(status: "removed")
    flash[:success] = "Item Successfully Deleted"
    redirect_to "/cart"
  end 

end

