class OrdersController < ApplicationController
  def new
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build
  end

  def create
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build order_params

    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :name, :address, :phone)
  end
end

