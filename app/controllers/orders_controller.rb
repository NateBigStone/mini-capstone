class OrdersController < ApplicationController
  def create
  carted_fish = current_user.carted_fishes.where(status: "carted")
  subtotal = 0
  carted_fish.each do |item|
    subtotal += (item.fish.price * item.quantity)
    item.assign_attributes(
                     status: "purchased"
                    )
    item.save
  end
  tax = subtotal * 0.09
  total = subtotal + tax 

  order = Order.new(
                     user_id: current_user.id,
                     subtotal: subtotal,
                     tax: tax,
                     total: total
                    )
  order.save
  flash[:success] = "Order Successfully Created"
  redirect_to "/checkout/#{order.id}"
  end 
  def show
    @order = Order.find(params[:id])
  end
        
end
