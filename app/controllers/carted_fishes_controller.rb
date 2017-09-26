class CartedFishesController < ApplicationController
  def index
    @carted_fish = current_user.carted_fishes.where(status: "carted")
    redirect_to "/"  if @carted_fish.length < 1
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
    delete = CartedFish.find(params[:id])
    delete.destroy
    flash[:success] = "Item Successfully Deleted"
    redirect_to "/cart"
  end 

end

