class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:create, :index, :destroy]
  def create
    carted_fish = current_user.carted_fishes.where(status: "carted")
    subtotal = 0
    carted_fish.each do |item|
      subtotal += (item.fish.price * item.quantity)
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
    carted_fish.each do |item|
      item.assign_attributes(
                       status: "purchased",
                       order_id: order.id
                      )
      item.save
    end
    flash[:success] = "Order Successfully Created"
    redirect_to "/checkout/#{order.id}"
  end 
  def show
    @order = Order.find(params[:id])
      unless current_user && current_user.id == @order.user_id
        flash[:warning] = "You are not logged in"
        redirect_to "/"
      end
  end
end
