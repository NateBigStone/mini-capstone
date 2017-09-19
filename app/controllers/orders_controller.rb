class OrdersController < ApplicationController
  def new
    # @fish = Fish.find_by(id: params[:id])
  end
  def create
  fish = Fish.find(params[:fish_id])
  subtotal = fish.price * params[:quantity].to_i
  tax = subtotal * 0.09
  total = subtotal  + tax 

  order = Order.new(
                     user_id: current_user.id,
                     fish_id: params[:fish_id],
                     quantity: params[:quantity],
   #                  subtotal: params[: ],
   #                  tax: params[: ],
   #                 total: params[: ]
                    )
  order.save
  flash[:success] = "Order Successfully Created"
  redirect_to "/checkout"
  end 
  def show
    @order = Order.last
  end
        
end
